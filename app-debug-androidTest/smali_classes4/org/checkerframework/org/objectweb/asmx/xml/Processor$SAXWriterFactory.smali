.class final Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriterFactory;
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
    name = "SAXWriterFactory"
.end annotation


# instance fields
.field private optimizeEmptyElements:Z

.field private w:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 0
    .param p1, "w"    # Ljava/io/Writer;
    .param p2, "optimizeEmptyElements"    # Z

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriterFactory;->w:Ljava/io/Writer;

    .line 501
    iput-boolean p2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriterFactory;->optimizeEmptyElements:Z

    .line 502
    return-void
.end method


# virtual methods
.method public final createContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 3

    .line 505
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriterFactory;->w:Ljava/io/Writer;

    iget-boolean v2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriterFactory;->optimizeEmptyElements:Z

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;-><init>(Ljava/io/Writer;Z)V

    return-object v0
.end method
