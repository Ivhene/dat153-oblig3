.class public Lorg/checkerframework/org/objectweb/asmx/xml/SAXFieldAdapter;
.super Ljava/lang/Object;
.source "SAXFieldAdapter.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;


# instance fields
.field private final h:Lorg/xml/sax/ContentHandler;


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/helpers/AttributesImpl;)V
    .locals 3
    .param p1, "h"    # Lorg/xml/sax/ContentHandler;
    .param p2, "att"    # Lorg/xml/sax/helpers/AttributesImpl;

    .line 48
    const-string v0, "field"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/SAXFieldAdapter;->h:Lorg/xml/sax/ContentHandler;

    .line 52
    :try_start_0
    const-string v1, ""

    invoke-interface {p1, v1, v0, v0, p2}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    nop

    .line 56
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ex":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 7
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 59
    new-instance v6, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/SAXFieldAdapter;->h:Lorg/xml/sax/ContentHandler;

    const-string v2, "annotation"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    move v3, v0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/xml/SAXAnnotationAdapter;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 0
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 77
    return-void
.end method

.method public visitEnd()V
    .locals 3

    .line 81
    const-string v0, "field"

    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/SAXFieldAdapter;->h:Lorg/xml/sax/ContentHandler;

    const-string v2, ""

    invoke-interface {v1, v2, v0, v0}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    nop

    .line 85
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "ex":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Jaime did not implement yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
