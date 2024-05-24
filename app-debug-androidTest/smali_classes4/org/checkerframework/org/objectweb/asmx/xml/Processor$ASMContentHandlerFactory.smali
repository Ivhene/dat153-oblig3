.class final Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ASMContentHandlerFactory;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/xml/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ASMContentHandlerFactory"
.end annotation


# instance fields
.field private computeMax:Z

.field private os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "computeMax"    # Z

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ASMContentHandlerFactory;->os:Ljava/io/OutputStream;

    .line 522
    iput-boolean p2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ASMContentHandlerFactory;->computeMax:Z

    .line 523
    return-void
.end method


# virtual methods
.method public final createContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 3

    .line 526
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ASMContentHandlerFactory;->os:Ljava/io/OutputStream;

    iget-boolean v2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ASMContentHandlerFactory;->computeMax:Z

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;-><init>(Ljava/io/OutputStream;Z)V

    return-object v0
.end method
