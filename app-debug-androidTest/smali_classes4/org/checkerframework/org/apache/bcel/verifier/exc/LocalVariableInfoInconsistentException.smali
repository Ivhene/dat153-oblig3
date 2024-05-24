.class public Lorg/checkerframework/org/apache/bcel/verifier/exc/LocalVariableInfoInconsistentException;
.super Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;
.source "LocalVariableInfoInconsistentException.java"


# static fields
.field private static final serialVersionUID:J = -0x27517aa2c792683eL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method
