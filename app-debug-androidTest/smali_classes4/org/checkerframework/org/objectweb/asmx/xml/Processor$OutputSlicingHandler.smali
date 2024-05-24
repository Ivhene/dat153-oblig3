.class final Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/xml/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OutputSlicingHandler"
.end annotation


# instance fields
.field private entryElement:Lorg/checkerframework/org/objectweb/asmx/xml/Processor$EntryElement;

.field private isXml:Z

.field private subdocument:Z

.field private subdocumentHandler:Lorg/xml/sax/ContentHandler;

.field private subdocumentHandlerFactory:Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;

.field private subdocumentRoot:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;Lorg/checkerframework/org/objectweb/asmx/xml/Processor$EntryElement;Z)V
    .locals 1
    .param p1, "subdocumentHandlerFactory"    # Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;
    .param p2, "entryElement"    # Lorg/checkerframework/org/objectweb/asmx/xml/Processor$EntryElement;
    .param p3, "isXml"    # Z

    .line 929
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 910
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->subdocument:Z

    .line 930
    const-string v0, "class"

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->subdocumentRoot:Ljava/lang/String;

    .line 931
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->subdocumentHandlerFactory:Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;

    .line 932
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->entryElement:Lorg/checkerframework/org/objectweb/asmx/xml/Processor$EntryElement;

    .line 933
    iput-boolean p3, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->isXml:Z

    .line 934
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

    .line 996
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->subdocument:Z

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 999
    :cond_0
    return-void
.end method

.method public final endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 991
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 973
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->subdocument:Z

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->subdocumentRoot:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 977
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->subdocument:Z

    .line 979
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->entryElement:Lorg/checkerframework/org/objectweb/asmx/xml/Processor$EntryElement;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$EntryElement;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    goto :goto_0

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 985
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public final startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 988
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "list"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 942
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->subdocument:Z

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 947
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->subdocumentRoot:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 948
    const-string v0, "name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 952
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->entryElement:Lorg/checkerframework/org/objectweb/asmx/xml/Processor$EntryElement;

    iget-boolean v2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->isXml:Z

    if-eqz v2, :cond_1

    const-string v2, ".class.xml"

    .line 953
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ".class"

    .line 954
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 952
    :goto_0
    invoke-interface {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$EntryElement;->openEntry(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    nop

    .line 958
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->subdocumentHandlerFactory:Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;

    invoke-interface {v1}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ContentHandlerFactory;->createContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    .line 959
    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 960
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 964
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$OutputSlicingHandler;->subdocument:Z

    goto :goto_1

    .line 955
    :catch_0
    move-exception v1

    .line 956
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 950
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_2
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Class element without name attribute."

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 966
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void
.end method
