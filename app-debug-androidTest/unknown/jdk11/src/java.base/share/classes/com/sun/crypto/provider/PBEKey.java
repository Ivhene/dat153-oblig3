/*
 * Copyright (c) 1997, 2017, Oracle and/or its affiliates. All rights reserved.
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
 *
 * This code is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License version 2 only, as
 * published by the Free Software Foundation.  Oracle designates this
 * particular file as subject to the "Classpath" exception as provided
 * by Oracle in the LICENSE file that accompanied this code.
 *
 * This code is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
 * version 2 for more details (a copy is included in the LICENSE file that
 * accompanied this code).
 *
 * You should have received a copy of the GNU General Public License version
 * 2 along with this work; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 * Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
 * or visit www.oracle.com if you need additional information or have any
 * questions.
 */

package com.sun.crypto.provider;

import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.NonNull;
import org.checkerframework.checker.nullness.qual.Nullable;
import org.checkerframework.dataflow.qual.Pure;
import org.checkerframework.dataflow.qual.SideEffectFree;

import java.lang.ref.Reference;
import java.security.MessageDigest;
import java.security.KeyRep;
import java.security.spec.InvalidKeySpecException;
import java.util.Locale;
import javax.crypto.SecretKey;
import javax.crypto.spec.PBEKeySpec;

import jdk.internal.ref.CleanerFactory;

/**
 * This class represents a PBE key.
 *
 * @author Jan Luehe
 *
 */
final class PBEKey implements SecretKey {

    static final long serialVersionUID = -2234768909660948176L;

    private byte[] key;

    private String type;

    /**
     * Creates a PBE key from a given PBE key specification.
     *
     * @param keytype the given PBE key specification
     */
    PBEKey(PBEKeySpec keySpec, String keytype) throws InvalidKeySpecException {
        char[] passwd = keySpec.getPassword();
        if (passwd == null) {
            // Should allow an empty password.
            passwd = new char[0];
        }
        // Accept "\0" to signify "zero-length password with no terminator".
        if (!(passwd.length == 1 && passwd[0] == 0)) {
            for (int i=0; i<passwd.length; i++) {
                if ((passwd[i] < '\u0020') || (passwd[i] > '\u007E')) {
                    throw new InvalidKeySpecException("Password is not ASCII");
                }
            }
        }
        this.key = new byte[passwd.length];
        for (int i=0; i<passwd.length; i++)
            this.key[i] = (byte) (passwd[i] & 0x7f);
        java.util.Arrays.fill(passwd, ' ');
        type = keytype;

        // Use the cleaner to zero the key when no longer referenced
        final byte[] k = this.key;
        CleanerFactory.cleaner().register(this,
                () -> java.util.Arrays.fill(k, (byte)0x00));
    }

    public byte[] getEncoded() {
        // The key is zeroized by finalize()
        // The reachability fence ensures finalize() isn't called early
        byte[] result = key.clone();
        Reference.reachabilityFence(this);
        return result;
    }

    public String getAlgorithm() {
        return type;
    }

    public String getFormat() {
        return "RAW";
    }

    /**
     * Calculates a hash code value for the object.
     * Objects that are equal will also have the same hashcode.
     */
    public int hashCode() {
        int retval = 0;
        for (int i = 1; i < this.key.length; i++) {
            retval += this.key[i] * i;
        }
        return(retval ^= getAlgorithm().toLowerCase(Locale.ENGLISH).hashCode());
    }

    @Pure
    @EnsuresNonNullIf(expression="#1", result=true)
    public boolean equals(@Nullable Object obj) {
        if (obj == this)
            return true;

        if (!(obj instanceof SecretKey))
            return false;

        SecretKey that = (SecretKey)obj;

        if (!(that.getAlgorithm().equalsIgnoreCase(type)))
            return false;

        byte[] thatEncoded = that.getEncoded();
        boolean ret = MessageDigest.isEqual(this.key, thatEncoded);
        java.util.Arrays.fill(thatEncoded, (byte)0x00);
        return ret;
    }

    /**
     * readObject is called to restore the state of this key from
     * a stream.
     */
    private void readObject(java.io.ObjectInputStream s)
         throws java.io.IOException, ClassNotFoundException
    {
        s.defaultReadObject();
        key = key.clone();
    }


    /**
     * Replace the PBE key to be serialized.
     *
     * @return the standard KeyRep object to be serialized
     *
     * @throws java.io.ObjectStreamException if a new object representing
     * this PBE key could not be created
     */
    private Object writeReplace() throws java.io.ObjectStreamException {
        return new KeyRep(KeyRep.Type.SECRET,
                        getAlgorithm(),
                        getFormat(),
                        getEncoded());
    }
}