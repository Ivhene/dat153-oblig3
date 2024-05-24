.class public abstract Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeConstraintException;
.super Lorg/checkerframework/org/apache/bcel/verifier/exc/CodeConstraintException;
.source "StaticCodeConstraintException.java"


# static fields
.field private static final serialVersionUID:J = 0x358c3a48c76fda48L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/CodeConstraintException;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method
