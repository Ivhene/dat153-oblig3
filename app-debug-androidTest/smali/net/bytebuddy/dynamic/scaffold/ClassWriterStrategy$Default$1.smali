.class final enum Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default$1;
.super Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;
.source "ClassWriterStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$1;)V

    return-void
.end method


# virtual methods
.method public resolve(ILnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/jar/asm/ClassReader;)Lnet/bytebuddy/jar/asm/ClassWriter;
    .locals 1
    .param p1, "flags"    # I
    .param p2, "typePool"    # Lnet/bytebuddy/pool/TypePool;
    .param p3, "classReader"    # Lnet/bytebuddy/jar/asm/ClassReader;

    .line 58
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$FrameComputingClassWriter;

    invoke-direct {v0, p3, p1, p2}, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$FrameComputingClassWriter;-><init>(Lnet/bytebuddy/jar/asm/ClassReader;ILnet/bytebuddy/pool/TypePool;)V

    return-object v0
.end method
