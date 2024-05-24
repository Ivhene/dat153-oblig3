.class public Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;
.super Lorg/checkerframework/org/apache/bcel/verifier/exc/VerificationException;
.source "ClassConstraintException.java"


# static fields
.field private static final serialVersionUID:J = -0x41dbc121de17bb68L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerificationException;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerificationException;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "initCause"    # Ljava/lang/Throwable;

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerificationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method
