.class public Lorg/checkerframework/org/apache/bcel/verifier/exc/LoadingException;
.super Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;
.source "LoadingException.java"


# static fields
.field private static final serialVersionUID:J = -0x6dccb886774159c7L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method
