.class public abstract Lorg/checkerframework/org/apache/bcel/verifier/exc/CodeConstraintException;
.super Lorg/checkerframework/org/apache/bcel/verifier/exc/VerificationException;
.source "CodeConstraintException.java"


# static fields
.field private static final serialVersionUID:J = -0x64d3d8166d6597a0L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerificationException;-><init>()V

    .line 34
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerificationException;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method
