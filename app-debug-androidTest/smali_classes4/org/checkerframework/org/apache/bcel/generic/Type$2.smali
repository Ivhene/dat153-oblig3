.class final Lorg/checkerframework/org/apache/bcel/generic/Type$2;
.super Lorg/checkerframework/org/apache/bcel/generic/Type;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/generic/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(BLjava/lang/String;)V
    .locals 0
    .param p1, "t"    # B
    .param p2, "s"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/Type;-><init>(BLjava/lang/String;)V

    return-void
.end method
