.class final Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SubdocumentHandlerFactory;
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
    name = "SubdocumentHandlerFactory"
.end annotation


# instance fields
.field private subdocumentHandler:Lorg/xml/sax/ContentHandler;


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "subdocumentHandler"    # Lorg/xml/sax/ContentHandler;

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SubdocumentHandlerFactory;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    .line 574
    return-void
.end method


# virtual methods
.method public final createContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .line 577
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SubdocumentHandlerFactory;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method
