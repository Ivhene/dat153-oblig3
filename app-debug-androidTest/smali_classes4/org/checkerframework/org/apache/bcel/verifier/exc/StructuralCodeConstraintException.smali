.class public Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;
.super Lorg/checkerframework/org/apache/bcel/verifier/exc/CodeConstraintException;
.source "StructuralCodeConstraintException.java"


# static fields
.field private static final serialVersionUID:J = 0x4b08f626ff17346cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/CodeConstraintException;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/CodeConstraintException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method
