.class public abstract Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;
.super Ljava/lang/Object;
.source "ASMContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "Rule"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;


# direct methods
.method protected constructor <init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    .line 525
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "val"    # Ljava/lang/String;

    .line 613
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 615
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 616
    .local v1, "n":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 617
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 618
    .local v2, "c":C
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_1

    .line 619
    add-int/lit8 v1, v1, 0x1

    .line 620
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v2, v4

    .line 621
    if-ne v2, v3, :cond_0

    .line 622
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 624
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 625
    add-int/lit8 v3, v1, 0x4

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 627
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 630
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_1
    nop

    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    .line 633
    goto :goto_0

    .line 639
    .end local v1    # "n":I
    :cond_2
    nop

    .line 640
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 635
    :catch_0
    move-exception v1

    .line 636
    .local v1, "ex":Ljava/lang/RuntimeException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 638
    throw v1
.end method


# virtual methods
.method public begin(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Lorg/xml/sax/Attributes;

    .line 528
    return-void
.end method

.method public end(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 531
    return-void
.end method

.method protected final getAccess(Ljava/lang/String;)I
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 658
    const/4 v0, 0x0

    .line 659
    .local v0, "access":I
    const-string v1, "public"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 660
    or-int/lit8 v0, v0, 0x1

    .line 661
    :cond_0
    const-string v1, "private"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 662
    or-int/lit8 v0, v0, 0x2

    .line 663
    :cond_1
    const-string v1, "protected"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 664
    or-int/lit8 v0, v0, 0x4

    .line 665
    :cond_2
    const-string v1, "static"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 666
    or-int/lit8 v0, v0, 0x8

    .line 667
    :cond_3
    const-string v1, "final"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 668
    or-int/lit8 v0, v0, 0x10

    .line 669
    :cond_4
    const-string v1, "super"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 670
    or-int/lit8 v0, v0, 0x20

    .line 671
    :cond_5
    const-string v1, "synchronized"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_6

    .line 672
    or-int/lit8 v0, v0, 0x20

    .line 673
    :cond_6
    const-string v1, "volatile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_7

    .line 674
    or-int/lit8 v0, v0, 0x40

    .line 675
    :cond_7
    const-string v1, "bridge"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_8

    .line 676
    or-int/lit8 v0, v0, 0x40

    .line 677
    :cond_8
    const-string v1, "varargs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_9

    .line 678
    or-int/lit16 v0, v0, 0x80

    .line 679
    :cond_9
    const-string v1, "transient"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_a

    .line 680
    or-int/lit16 v0, v0, 0x80

    .line 681
    :cond_a
    const-string v1, "native"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_b

    .line 682
    or-int/lit16 v0, v0, 0x100

    .line 683
    :cond_b
    const-string v1, "interface"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_c

    .line 684
    or-int/lit16 v0, v0, 0x200

    .line 685
    :cond_c
    const-string v1, "abstract"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_d

    .line 686
    or-int/lit16 v0, v0, 0x400

    .line 687
    :cond_d
    const-string v1, "strict"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_e

    .line 688
    or-int/lit16 v0, v0, 0x800

    .line 689
    :cond_e
    const-string v1, "synthetic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_f

    .line 690
    or-int/lit16 v0, v0, 0x1000

    .line 691
    :cond_f
    const-string v1, "annotation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_10

    .line 692
    or-int/lit16 v0, v0, 0x2000

    .line 693
    :cond_10
    const-string v1, "enum"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_11

    .line 694
    or-int/lit16 v0, v0, 0x4000

    .line 695
    :cond_11
    const-string v1, "deprecated"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_12

    .line 696
    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 697
    :cond_12
    return v0
.end method

.method protected final getCodeVisitor()Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .locals 1

    .line 654
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    return-object v0
.end method

.method protected final getLabel(Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/Label;
    .locals 2
    .param p1, "label"    # Ljava/lang/Object;

    .line 644
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->labels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 645
    .local v0, "lbl":Lorg/checkerframework/org/objectweb/asmx/Label;
    if-nez v0, :cond_0

    .line 646
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-direct {v1}, Lorg/checkerframework/org/objectweb/asmx/Label;-><init>()V

    move-object v0, v1

    .line 647
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    iget-object v1, v1, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->labels:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    :cond_0
    return-object v0
.end method

.method protected final getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "value":Ljava/lang/Object;
    if-eqz p2, :cond_e

    .line 536
    const-string v1, "Ljava/lang/String;"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    invoke-direct {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 538
    :cond_0
    const-string v1, "Ljava/lang/Integer;"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 539
    const-string v1, "I"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "S"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 540
    const-string v1, "B"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "C"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 541
    const-string v1, "Z"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 545
    :cond_1
    const-string v1, "Ljava/lang/Short;"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 546
    new-instance v1, Ljava/lang/Short;

    invoke-direct {v1, p2}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_4

    .line 548
    :cond_2
    const-string v1, "Ljava/lang/Byte;"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 549
    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p2}, Ljava/lang/Byte;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_4

    .line 551
    :cond_3
    const-string v1, "Ljava/lang/Character;"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 552
    new-instance v1, Ljava/lang/Character;

    invoke-direct {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    move-object v0, v1

    goto/16 :goto_4

    .line 554
    :cond_4
    const-string v1, "Ljava/lang/Boolean;"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 555
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_4

    .line 574
    :cond_5
    const-string v1, "Ljava/lang/Long;"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "J"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_2

    .line 577
    :cond_6
    const-string v1, "Ljava/lang/Float;"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "F"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    .line 580
    :cond_7
    const-string v1, "Ljava/lang/Double;"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 581
    const-string v1, "D"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0

    .line 584
    :cond_8
    const-class v1, Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-static {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 585
    invoke-static {p2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    goto :goto_4

    .line 605
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ctx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 583
    :cond_a
    :goto_0
    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_4

    .line 579
    :cond_b
    :goto_1
    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_4

    .line 576
    :cond_c
    :goto_2
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_4

    .line 543
    :cond_d
    :goto_3
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 609
    :cond_e
    :goto_4
    return-object v0
.end method
