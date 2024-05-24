.class public abstract Lorg/checkerframework/org/apache/bcel/verifier/exc/VerificationException;
.super Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;
.source "VerificationException.java"


# static fields
.field private static final serialVersionUID:J = 0x6f33199c1d40cfa4L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;-><init>()V

    .line 40
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "initCause"    # Ljava/lang/Throwable;

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method
