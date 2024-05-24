.class public Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeInstructionConstraintException;
.super Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeConstraintException;
.source "StaticCodeInstructionConstraintException.java"


# static fields
.field private static final serialVersionUID:J = 0x45364ae292dfe80aL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeConstraintException;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method
