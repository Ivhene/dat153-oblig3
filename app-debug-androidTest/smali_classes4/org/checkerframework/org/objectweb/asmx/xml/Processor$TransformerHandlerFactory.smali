.class final Lorg/checkerframework/org/objectweb/asmx/xml/Processor$TransformerHandlerFactory;
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
    name = "TransformerHandlerFactory"
.end annotation


# instance fields
.field private outputHandler:Lorg/xml/sax/ContentHandler;

.field private saxtf:Ljavax/xml/transform/sax/SAXTransformerFactory;

.field private templates:Ljavax/xml/transform/Templates;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/sax/SAXTransformerFactory;Ljavax/xml/transform/Templates;Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "saxtf"    # Ljavax/xml/transform/sax/SAXTransformerFactory;
    .param p2, "templates"    # Ljavax/xml/transform/Templates;
    .param p3, "outputHandler"    # Lorg/xml/sax/ContentHandler;

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$TransformerHandlerFactory;->saxtf:Ljavax/xml/transform/sax/SAXTransformerFactory;

    .line 549
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$TransformerHandlerFactory;->templates:Ljavax/xml/transform/Templates;

    .line 550
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$TransformerHandlerFactory;->outputHandler:Lorg/xml/sax/ContentHandler;

    .line 551
    return-void
.end method


# virtual methods
.method public final createContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 3

    .line 555
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$TransformerHandlerFactory;->saxtf:Ljavax/xml/transform/sax/SAXTransformerFactory;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$TransformerHandlerFactory;->templates:Ljavax/xml/transform/Templates;

    invoke-virtual {v0, v1}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v0

    .line 556
    .local v0, "handler":Ljavax/xml/transform/sax/TransformerHandler;
    new-instance v1, Ljavax/xml/transform/sax/SAXResult;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$TransformerHandlerFactory;->outputHandler:Lorg/xml/sax/ContentHandler;

    invoke-direct {v1, v2}, Ljavax/xml/transform/sax/SAXResult;-><init>(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v0, v1}, Ljavax/xml/transform/sax/TransformerHandler;->setResult(Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    return-object v0

    .line 558
    .end local v0    # "handler":Ljavax/xml/transform/sax/TransformerHandler;
    :catch_0
    move-exception v0

    .line 559
    .local v0, "ex":Ljavax/xml/transform/TransformerConfigurationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerConfigurationException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
