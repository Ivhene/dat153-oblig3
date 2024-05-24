.class final Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8$1;
.super Ljava/lang/Thread;
.source "ConstantUtf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 87
    invoke-static {}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->printStats()V

    .line 88
    return-void
.end method
