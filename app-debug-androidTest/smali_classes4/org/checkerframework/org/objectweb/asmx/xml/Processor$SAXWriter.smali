.class final Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Processor.java"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/xml/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SAXWriter"
.end annotation


# static fields
.field private static final OFF:[C


# instance fields
.field private ident:I

.field private openElement:Z

.field private optimizeEmptyElements:Z

.field private w:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 593
    const-string v0, "                                                                                                        "

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->OFF:[C

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 1
    .param p1, "w"    # Ljava/io/Writer;
    .param p2, "optimizeEmptyElements"    # Z

    .line 610
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 599
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->openElement:Z

    .line 601
    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->ident:I

    .line 611
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    .line 612
    iput-boolean p2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->optimizeEmptyElements:Z

    .line 613
    return-void
.end method

.method private final closeElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->openElement:Z

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 779
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->openElement:Z

    .line 780
    return-void
.end method

.method private final esc(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .line 728
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 729
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 730
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 731
    .local v2, "ch":C
    sparse-switch v2, :sswitch_data_0

    .line 749
    const/16 v3, 0x7f

    if-le v2, v3, :cond_0

    .line 750
    const-string v3, "&#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 751
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 752
    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 741
    :sswitch_0
    const-string v3, "&gt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 742
    goto :goto_1

    .line 737
    :sswitch_1
    const-string v3, "&lt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 738
    goto :goto_1

    .line 733
    :sswitch_2
    const-string v3, "&amp;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 734
    goto :goto_1

    .line 745
    :sswitch_3
    const-string v3, "&quot;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 746
    goto :goto_1

    .line 754
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 729
    .end local v2    # "ch":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 759
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method private final writeAttributes(Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 709
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 710
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 711
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 712
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 713
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 714
    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 715
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 716
    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 711
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 718
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 719
    return-void
.end method

.method private final writeIdent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 763
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->ident:I

    .line 764
    .local v0, "n":I
    :goto_0
    if-lez v0, :cond_1

    .line 765
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->OFF:[C

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 766
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write([C)V

    .line 767
    array-length v1, v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 769
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/Writer;->write([CII)V

    .line 770
    const/4 v0, 0x0

    goto :goto_0

    .line 773
    :cond_1
    return-void
.end method


# virtual methods
.method public final comment([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 675
    :try_start_0
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->closeElement()V

    .line 677
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->writeIdent()V

    .line 678
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    const-string v1, "<!-- "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 680
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    const-string v1, " -->\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    nop

    .line 686
    return-void

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 706
    return-void
.end method

.method public final endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 694
    return-void
.end method

.method public final endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 663
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    nop

    .line 669
    return-void

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 645
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->ident:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->ident:I

    .line 647
    :try_start_0
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->openElement:Z

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    const-string v1, "/>\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->openElement:Z

    goto :goto_0

    .line 651
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->writeIdent()V

    .line 652
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :goto_0
    nop

    .line 659
    return-void

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final endEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 700
    return-void
.end method

.method public final startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 703
    return-void
.end method

.method public final startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 691
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 622
    :try_start_0
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->closeElement()V

    .line 624
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->writeIdent()V

    .line 625
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    const-string v1, "<"

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 626
    if-eqz p4, :cond_0

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 627
    invoke-direct {p0, p4}, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->writeAttributes(Lorg/xml/sax/Attributes;)V

    .line 629
    :cond_0
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->optimizeEmptyElements:Z

    if-nez v0, :cond_1

    .line 630
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->openElement:Z

    .line 634
    :goto_0
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->ident:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SAXWriter;->ident:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    nop

    .line 640
    return-void

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final startEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 697
    return-void
.end method
