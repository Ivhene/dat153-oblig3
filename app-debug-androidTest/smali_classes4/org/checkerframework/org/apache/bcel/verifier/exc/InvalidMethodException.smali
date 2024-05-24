.class public Lorg/checkerframework/org/apache/bcel/verifier/exc/InvalidMethodException;
.super Ljava/lang/RuntimeException;
.source "InvalidMethodException.java"


# static fields
.field private static final serialVersionUID:J = -0x61fb3bf0366ed773L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method
