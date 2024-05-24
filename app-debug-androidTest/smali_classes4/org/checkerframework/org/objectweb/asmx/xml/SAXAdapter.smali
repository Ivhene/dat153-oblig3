.class public abstract Lorg/checkerframework/org/objectweb/asmx/xml/SAXAdapter;
.super Ljava/lang/Object;
.source "SAXAdapter.java"


# instance fields
.field private final h:Lorg/xml/sax/ContentHandler;


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "h"    # Lorg/xml/sax/ContentHandler;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAdapter;->h:Lorg/xml/sax/ContentHandler;

    .line 46
    return-void
.end method


# virtual methods
.method protected addDocumentEnd()V
    .locals 3

    .line 83
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAdapter;->h:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    nop

    .line 89
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 87
    .local v0, "ex":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected addDocumentStart()V
    .locals 3

    .line 75
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAdapter;->h:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    nop

    .line 79
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "ex":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final addElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Lorg/xml/sax/Attributes;

    .line 69
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAdapter;->addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 70
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAdapter;->addEnd(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method protected final addEnd(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 54
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAdapter;->h:Lorg/xml/sax/ContentHandler;

    const-string v1, ""

    invoke-interface {v0, v1, p1, p1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    nop

    .line 58
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "ex":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final addStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Lorg/xml/sax/Attributes;

    .line 62
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAdapter;->h:Lorg/xml/sax/ContentHandler;

    const-string v1, ""

    invoke-interface {v0, v1, p1, p1, p2}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    nop

    .line 66
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "ex":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAdapter;->h:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method
