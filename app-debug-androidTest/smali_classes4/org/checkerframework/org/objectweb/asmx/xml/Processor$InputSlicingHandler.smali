.class final Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/xml/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputSlicingHandler"
.end annotation


# instance fields
.field private rootHandler:Lorg/xml/sax/ContentHandler;

.field private subdocument:Z

.field private subdocumentHandler:Lorg/xml/sax/ContentHandler;

.field private subdocumentHandlerFactory:Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;

.field private subdocumentRoot:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/xml/sax/ContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;)V
    .locals 1
    .param p1, "subdocumentRoot"    # Ljava/lang/String;
    .param p2, "rootHandler"    # Lorg/xml/sax/ContentHandler;
    .param p3, "subdocumentHandlerFactory"    # Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;

    .line 821
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 800
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->subdocument:Z

    .line 822
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->subdocumentRoot:Ljava/lang/String;

    .line 823
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->rootHandler:Lorg/xml/sax/ContentHandler;

    .line 824
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->subdocumentHandlerFactory:Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;

    .line 825
    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .locals 1
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 883
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->subdocument:Z

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_0

    .line 885
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->rootHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    .line 886
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 888
    :cond_1
    :goto_0
    return-void
.end method

.method public final endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 874
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->rootHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 875
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 878
    :cond_0
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 856
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->subdocument:Z

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->subdocumentRoot:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 860
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->subdocument:Z

    goto :goto_0

    .line 862
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->rootHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    .line 863
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :cond_1
    :goto_0
    return-void
.end method

.method public final startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 868
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->rootHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 869
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 871
    :cond_0
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "list"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 833
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->subdocument:Z

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 838
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->subdocumentRoot:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->subdocumentHandlerFactory:Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;->createContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    .line 840
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 841
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 845
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->subdocument:Z

    goto :goto_0

    .line 846
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$InputSlicingHandler;->rootHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_2

    .line 847
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 849
    :cond_2
    :goto_0
    return-void
.end method
