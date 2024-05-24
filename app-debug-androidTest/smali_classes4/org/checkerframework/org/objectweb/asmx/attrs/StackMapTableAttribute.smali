.class public Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;
.super Lorg/checkerframework/org/objectweb/asmx/Attribute;
.source "StackMapTableAttribute.java"


# static fields
.field public static final APPEND_FRAME:I = 0xfc

.field public static final CHOP_FRAME:I = 0xf8

.field public static final FULL_FRAME:I = 0xff

.field private static final MAX_SHORT:I = 0xffff

.field public static final RESERVED:I = 0x80

.field public static final SAME_FRAME:I = 0x0

.field public static final SAME_FRAME_EXTENDED:I = 0xfb

.field public static final SAME_LOCALS_1_STACK_ITEM_FRAME:I = 0x40

.field public static final SAME_LOCALS_1_STACK_ITEM_FRAME_EXTENDED:I = 0xf7


# instance fields
.field private frames:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 413
    const-string v0, "StackMapTable"

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/Attribute;-><init>(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1, "frames"    # Ljava/util/List;

    .line 417
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;-><init>()V

    .line 418
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->frames:Ljava/util/List;

    .line 419
    return-void
.end method

.method public static calculateLocals(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "access"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "methodDesc"    # Ljava/lang/String;

    .line 803
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 806
    .local v0, "locals":Ljava/util/List;
    const-string v1, "<init>"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x7

    if-eqz v1, :cond_0

    .line 807
    const-string v1, "java/lang/Object"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 809
    const/4 v1, 0x6

    invoke-static {v1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getTypeInfo(I)Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;

    move-result-object v1

    .line 810
    .local v1, "typeInfo":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    invoke-virtual {v1, p0}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->setObject(Ljava/lang/String;)V

    .line 811
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1    # "typeInfo":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    goto :goto_0

    .line 812
    :cond_0
    and-int/lit8 v1, p1, 0x8

    if-nez v1, :cond_1

    .line 813
    invoke-static {v2}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getTypeInfo(I)Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;

    move-result-object v1

    .line 814
    .restart local v1    # "typeInfo":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    invoke-virtual {v1, p0}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->setObject(Ljava/lang/String;)V

    .line 815
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 812
    .end local v1    # "typeInfo":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    :cond_1
    :goto_0
    nop

    .line 818
    :goto_1
    invoke-static {p3}, Lorg/checkerframework/org/objectweb/asmx/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    .line 819
    .local v1, "types":[Lorg/checkerframework/org/objectweb/asmx/Type;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 820
    aget-object v4, v1, v3

    .line 822
    .local v4, "t":Lorg/checkerframework/org/objectweb/asmx/Type;
    invoke-virtual {v4}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 841
    const/4 v5, 0x1

    invoke-static {v5}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getTypeInfo(I)Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;

    goto :goto_3

    .line 836
    :pswitch_0
    invoke-static {v2}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getTypeInfo(I)Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;

    move-result-object v5

    .line 837
    .local v5, "smt":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    invoke-virtual {v4}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->setObject(Ljava/lang/String;)V

    .line 838
    goto :goto_3

    .line 827
    .end local v5    # "smt":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    :pswitch_1
    const/4 v5, 0x3

    invoke-static {v5}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getTypeInfo(I)Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;

    move-result-object v5

    .line 828
    .restart local v5    # "smt":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    goto :goto_3

    .line 824
    .end local v5    # "smt":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    :pswitch_2
    const/4 v5, 0x4

    invoke-static {v5}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getTypeInfo(I)Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;

    move-result-object v5

    .line 825
    .restart local v5    # "smt":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    goto :goto_3

    .line 831
    .end local v5    # "smt":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    :pswitch_3
    const/4 v5, 0x2

    invoke-static {v5}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getTypeInfo(I)Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;

    move-result-object v5

    .line 832
    .restart local v5    # "smt":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    nop

    .line 819
    .end local v4    # "t":Lorg/checkerframework/org/objectweb/asmx/Type;
    .end local v5    # "smt":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 846
    .end local v3    # "i":I
    :cond_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getLabel(I[Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/Label;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 912
    aget-object v0, p2, p1

    .line 913
    .local v0, "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    if-eqz v0, :cond_0

    .line 914
    return-object v0

    .line 916
    :cond_0
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-direct {v1}, Lorg/checkerframework/org/objectweb/asmx/Label;-><init>()V

    aput-object v1, p2, p1

    return-object v1
.end method

.method public static getMethodOff(Lorg/checkerframework/org/objectweb/asmx/ClassReader;I[C)I
    .locals 8
    .param p0, "cr"    # Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    .param p1, "codeOff"    # I
    .param p2, "buf"    # [C

    .line 751
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x6

    .line 753
    .local v0, "off":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 754
    .local v1, "interfacesCount":I
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 756
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 757
    .local v2, "fieldsCount":I
    add-int/lit8 v0, v0, 0x2

    .line 758
    :goto_0
    if-lez v2, :cond_1

    .line 759
    add-int/lit8 v3, v0, 0x6

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 760
    .local v3, "attrCount":I
    add-int/lit8 v0, v0, 0x8

    .line 761
    :goto_1
    if-lez v3, :cond_0

    .line 762
    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    add-int/2addr v0, v4

    .line 761
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 758
    .end local v3    # "attrCount":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 766
    :cond_1
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 767
    .local v3, "methodsCount":I
    add-int/lit8 v0, v0, 0x2

    .line 768
    :goto_2
    if-lez v3, :cond_4

    .line 769
    move v4, v0

    .line 770
    .local v4, "methodOff":I
    add-int/lit8 v5, v0, 0x6

    invoke-virtual {p0, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v5

    .line 771
    .local v5, "attrCount":I
    add-int/lit8 v0, v0, 0x8

    .line 772
    :goto_3
    if-lez v5, :cond_3

    .line 773
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 774
    .local v6, "attrName":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x6

    .line 775
    const-string v7, "Code"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 776
    if-ne p1, v0, :cond_2

    .line 777
    return v4

    .line 780
    :cond_2
    add-int/lit8 v7, v0, -0x4

    invoke-virtual {p0, v7}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v7

    add-int/2addr v0, v7

    .line 772
    .end local v6    # "attrName":Ljava/lang/String;
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 768
    .end local v4    # "methodOff":I
    .end local v5    # "attrCount":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 784
    :cond_4
    const/4 v4, -0x1

    return v4
.end method

.method private readType(Ljava/util/List;ZLorg/checkerframework/org/objectweb/asmx/ClassReader;I[Lorg/checkerframework/org/objectweb/asmx/Label;[C)I
    .locals 4
    .param p1, "info"    # Ljava/util/List;
    .param p2, "isExtCodeSize"    # Z
    .param p3, "cr"    # Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    .param p4, "off"    # I
    .param p5, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p6, "buf"    # [C

    .line 881
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "off":I
    .local v0, "off":I
    invoke-virtual {p3, p4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readByte(I)I

    move-result p4

    .line 882
    .local p4, "itemType":I
    invoke-static {p4}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getTypeInfo(I)Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;

    move-result-object v1

    .line 883
    .local v1, "typeInfo":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    packed-switch p4, :pswitch_data_0

    goto :goto_1

    .line 897
    :pswitch_0
    if-eqz p2, :cond_0

    .line 898
    invoke-virtual {p3, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v2

    .line 899
    .local v2, "offset":I
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 901
    .end local v2    # "offset":I
    :cond_0
    invoke-virtual {p3, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 902
    .restart local v2    # "offset":I
    add-int/lit8 v0, v0, 0x2

    .line 905
    :goto_0
    invoke-direct {p0, v2, p5}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->getLabel(I[Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->setLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    goto :goto_1

    .line 891
    .end local v2    # "offset":I
    :pswitch_1
    invoke-virtual {p3, v0, p6}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->setObject(Ljava/lang/String;)V

    .line 892
    add-int/lit8 v0, v0, 0x2

    .line 893
    nop

    .line 908
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readTypes(Ljava/util/List;ZZLorg/checkerframework/org/objectweb/asmx/ClassReader;I[Lorg/checkerframework/org/objectweb/asmx/Label;[C)I
    .locals 8
    .param p1, "info"    # Ljava/util/List;
    .param p2, "isExt"    # Z
    .param p3, "isExtCodeSize"    # Z
    .param p4, "cr"    # Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    .param p5, "off"    # I
    .param p6, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p7, "buf"    # [C

    .line 858
    const/4 v0, 0x0

    .line 859
    .local v0, "n":I
    if-eqz p2, :cond_0

    .line 860
    invoke-virtual {p4, p5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v0

    .line 861
    add-int/lit8 p5, p5, 0x4

    goto :goto_0

    .line 863
    :cond_0
    invoke-virtual {p4, p5}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 864
    add-int/lit8 p5, p5, 0x2

    .line 867
    :goto_0
    if-lez v0, :cond_1

    .line 868
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v1 .. v7}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->readType(Ljava/util/List;ZLorg/checkerframework/org/objectweb/asmx/ClassReader;I[Lorg/checkerframework/org/objectweb/asmx/Label;[C)I

    move-result p5

    .line 867
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 870
    :cond_1
    return p5
.end method

.method private writeSize(ILorg/checkerframework/org/objectweb/asmx/ByteVector;Z)V
    .locals 0
    .param p1, "delta"    # I
    .param p2, "bv"    # Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .param p3, "isExt"    # Z

    .line 719
    if-eqz p3, :cond_0

    .line 720
    invoke-virtual {p2, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_0

    .line 722
    :cond_0
    invoke-virtual {p2, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 724
    :goto_0
    return-void
.end method

.method private writeTypeInfos(Lorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ClassWriter;Ljava/util/List;II)V
    .locals 3
    .param p1, "bv"    # Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .param p2, "cw"    # Lorg/checkerframework/org/objectweb/asmx/ClassWriter;
    .param p3, "info"    # Ljava/util/List;
    .param p4, "start"    # I
    .param p5, "end"    # I

    .line 733
    move v0, p4

    .local v0, "j":I
    :goto_0
    if-ge v0, p5, :cond_0

    .line 734
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;

    .line 735
    .local v1, "typeInfo":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getType()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 737
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 743
    :pswitch_0
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getLabel()Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/Label;->getOffset()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_1

    .line 739
    :pswitch_1
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getObject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 740
    nop

    .line 733
    .end local v1    # "typeInfo":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 748
    .end local v0    # "j":I
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getFrame(Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    .locals 3
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 426
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->frames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 427
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->frames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;

    .line 428
    .local v1, "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    iget-object v2, v1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    if-ne v2, p1, :cond_0

    .line 429
    return-object v1

    .line 426
    .end local v1    # "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrames()Ljava/util/List;
    .locals 1

    .line 422
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->frames:Ljava/util/List;

    return-object v0
.end method

.method public isCodeAttribute()Z
    .locals 1

    .line 440
    const/4 v0, 0x1

    return v0
.end method

.method public isUnknown()Z
    .locals 1

    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method protected read(Lorg/checkerframework/org/objectweb/asmx/ClassReader;II[CI[Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .locals 29
    .param p1, "cr"    # Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "buf"    # [C
    .param p5, "codeOff"    # I
    .param p6, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 452
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p4

    move/from16 v12, p5

    move-object/from16 v11, p6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 455
    .local v10, "frames":Ljava/util/ArrayList;
    add-int/lit8 v0, v12, 0x4

    invoke-virtual {v14, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v0

    const/16 v23, 0x1

    const v1, 0xffff

    if-le v0, v1, :cond_0

    move/from16 v0, v23

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move/from16 v24, v0

    .line 456
    .local v24, "isExtCodeSize":Z
    add-int/lit8 v0, v12, 0x2

    invoke-virtual {v14, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    if-le v0, v1, :cond_1

    move/from16 v9, v23

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 457
    .local v9, "isExtLocals":Z
    :goto_1
    invoke-virtual {v14, v12}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    if-le v0, v1, :cond_2

    move/from16 v17, v23

    goto :goto_2

    :cond_2
    const/16 v17, 0x0

    .line 459
    .local v17, "isExtStack":Z
    :goto_2
    const/4 v0, 0x0

    .line 461
    .local v0, "offset":I
    invoke-static {v14, v12, v13}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->getMethodOff(Lorg/checkerframework/org/objectweb/asmx/ClassReader;I[C)I

    move-result v8

    .line 462
    .local v8, "methodOff":I
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;

    invoke-direct {v15, v0, v11}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->getLabel(I[Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v2

    iget v3, v14, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->header:I

    add-int/lit8 v3, v3, 0x2

    .line 463
    invoke-virtual {v14, v3, v13}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    .line 464
    invoke-virtual {v14, v8}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v5, v8, 0x2

    .line 465
    invoke-virtual {v14, v5, v13}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v8, 0x4

    .line 466
    invoke-virtual {v14, v6, v13}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 463
    invoke-static {v3, v4, v5, v6}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->calculateLocals(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;-><init>(Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/util/List;Ljava/util/List;)V

    .line 468
    .local v1, "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    if-eqz v24, :cond_3

    .line 475
    invoke-virtual/range {p1 .. p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v2

    .line 476
    .local v2, "size":I
    add-int/lit8 v3, p2, 0x4

    move v6, v0

    move-object v5, v1

    move/from16 v25, v2

    .end local p2    # "off":I
    .local v3, "off":I
    goto :goto_3

    .line 478
    .end local v2    # "size":I
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_3
    invoke-virtual/range {p1 .. p2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 479
    .restart local v2    # "size":I
    add-int/lit8 v3, p2, 0x2

    move v6, v0

    move-object v5, v1

    move/from16 v25, v2

    .line 482
    .end local v0    # "offset":I
    .end local v1    # "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    .end local v2    # "size":I
    .end local p2    # "off":I
    .restart local v3    # "off":I
    .local v5, "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    .local v6, "offset":I
    .local v25, "size":I
    :goto_3
    if-lez v25, :cond_d

    .line 483
    invoke-virtual {v14, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readByte(I)I

    move-result v4

    .line 484
    .local v4, "tag":I
    add-int/lit8 v3, v3, 0x1

    .line 490
    const/16 v0, 0x40

    if-ge v4, v0, :cond_4

    .line 491
    move v0, v4

    .line 493
    .local v0, "offsetDelta":I
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v5, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->locals:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 494
    .local v1, "locals":Ljava/util/List;
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move/from16 v27, v0

    move/from16 v16, v3

    move-object v7, v5

    move/from16 v26, v6

    move-object v4, v10

    move-object v5, v11

    move-object v6, v15

    move-object v3, v2

    const/4 v2, 0x0

    move/from16 v28, v8

    move-object v8, v1

    move/from16 v1, v28

    .local v2, "stack":Ljava/util/List;
    goto/16 :goto_6

    .line 496
    .end local v0    # "offsetDelta":I
    .end local v1    # "locals":Ljava/util/List;
    .end local v2    # "stack":Ljava/util/List;
    :cond_4
    const/16 v0, 0x80

    if-ge v4, v0, :cond_5

    .line 497
    add-int/lit8 v16, v4, -0x40

    .line 499
    .local v16, "offsetDelta":I
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v5, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->locals:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v18, v0

    .line 500
    .local v18, "locals":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v1, "stack":Ljava/util/List;
    move-object/from16 v0, p0

    move/from16 v2, v24

    move/from16 p2, v3

    .end local v3    # "off":I
    .restart local p2    # "off":I
    move-object/from16 v3, p1

    move v7, v4

    .end local v4    # "tag":I
    .local v7, "tag":I
    move/from16 v4, p2

    move-object v15, v5

    .end local v5    # "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    .local v15, "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    move-object/from16 v5, p6

    move/from16 v26, v6

    .end local v6    # "offset":I
    .local v26, "offset":I
    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->readType(Ljava/util/List;ZLorg/checkerframework/org/objectweb/asmx/ClassReader;I[Lorg/checkerframework/org/objectweb/asmx/Label;[C)I

    move-result v0

    move-object/from16 v6, p0

    move-object v3, v1

    move v1, v8

    move-object v4, v10

    move-object v5, v11

    move/from16 v27, v16

    move-object/from16 v8, v18

    const/4 v2, 0x0

    move/from16 v16, v0

    move v0, v7

    move-object v7, v15

    .end local p2    # "off":I
    .local v0, "off":I
    goto/16 :goto_6

    .line 505
    .end local v0    # "off":I
    .end local v1    # "stack":Ljava/util/List;
    .end local v7    # "tag":I
    .end local v15    # "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    .end local v16    # "offsetDelta":I
    .end local v18    # "locals":Ljava/util/List;
    .end local v26    # "offset":I
    .restart local v3    # "off":I
    .restart local v4    # "tag":I
    .restart local v5    # "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    .restart local v6    # "offset":I
    :cond_5
    move/from16 p2, v3

    move v7, v4

    move-object v15, v5

    move/from16 v26, v6

    .end local v3    # "off":I
    .end local v4    # "tag":I
    .end local v5    # "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    .end local v6    # "offset":I
    .restart local v7    # "tag":I
    .restart local v15    # "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    .restart local v26    # "offset":I
    .restart local p2    # "off":I
    if-eqz v24, :cond_6

    .line 506
    move/from16 v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    invoke-virtual {v14, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v0

    .line 507
    .local v0, "offsetDelta":I
    add-int/lit8 v3, v3, 0x4

    move/from16 v27, v0

    move/from16 v16, v3

    goto :goto_4

    .line 509
    .end local v0    # "offsetDelta":I
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_6
    move/from16 v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    invoke-virtual {v14, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 510
    .restart local v0    # "offsetDelta":I
    add-int/lit8 v3, v3, 0x2

    move/from16 v27, v0

    move/from16 v16, v3

    .line 513
    .end local v0    # "offsetDelta":I
    .end local v3    # "off":I
    .local v16, "off":I
    .local v27, "offsetDelta":I
    :goto_4
    const/16 v0, 0xf7

    if-ne v7, v0, :cond_7

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v15, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->locals:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v18, v0

    .line 515
    .restart local v18    # "locals":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .restart local v1    # "stack":Ljava/util/List;
    move-object/from16 v0, p0

    move/from16 v2, v24

    move-object/from16 v3, p1

    move/from16 v4, v16

    move-object/from16 v5, p6

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->readType(Ljava/util/List;ZLorg/checkerframework/org/objectweb/asmx/ClassReader;I[Lorg/checkerframework/org/objectweb/asmx/Label;[C)I

    move-result v0

    move-object/from16 v6, p0

    move/from16 v16, v0

    move-object v3, v1

    move v0, v7

    move v1, v8

    move-object v4, v10

    move-object v5, v11

    move-object v7, v15

    move-object/from16 v8, v18

    const/4 v2, 0x0

    .end local v16    # "off":I
    .local v0, "off":I
    goto/16 :goto_6

    .line 519
    .end local v0    # "off":I
    .end local v1    # "stack":Ljava/util/List;
    .end local v18    # "locals":Ljava/util/List;
    .restart local v16    # "off":I
    :cond_7
    const/16 v0, 0xf8

    const/16 v1, 0xfb

    if-lt v7, v0, :cond_8

    if-ge v7, v1, :cond_8

    .line 520
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 522
    .restart local v2    # "stack":Ljava/util/List;
    rsub-int v0, v7, 0xfb

    .line 524
    .local v0, "k":I
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v15, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->locals:Ljava/util/List;

    iget-object v4, v15, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->locals:Ljava/util/List;

    .line 525
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    .line 524
    const/4 v6, 0x0

    invoke-interface {v3, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 527
    .end local v0    # "k":I
    .local v1, "locals":Ljava/util/List;
    move-object v3, v2

    move v2, v6

    move v0, v7

    move-object v4, v10

    move-object v5, v11

    move-object v7, v15

    move-object/from16 v6, p0

    move/from16 v28, v8

    move-object v8, v1

    move/from16 v1, v28

    goto/16 :goto_6

    .line 519
    .end local v1    # "locals":Ljava/util/List;
    .end local v2    # "stack":Ljava/util/List;
    :cond_8
    const/4 v6, 0x0

    .line 527
    if-ne v7, v1, :cond_9

    .line 528
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 529
    .restart local v2    # "stack":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v15, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->locals:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v0

    move-object v3, v2

    move v2, v6

    move v0, v7

    move-object v4, v10

    move-object v5, v11

    move-object v7, v15

    move-object/from16 v6, p0

    move/from16 v28, v8

    move-object v8, v1

    move/from16 v1, v28

    .restart local v1    # "locals":Ljava/util/List;
    goto/16 :goto_6

    .line 531
    .end local v1    # "locals":Ljava/util/List;
    .end local v2    # "stack":Ljava/util/List;
    :cond_9
    const/16 v0, 0xff

    if-ge v7, v0, :cond_b

    .line 532
    sget-object v18, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 535
    .local v18, "stack":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v15, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->locals:Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 536
    .restart local v1    # "locals":Ljava/util/List;
    add-int/lit16 v4, v7, -0xfb

    move/from16 v19, v16

    move/from16 v16, v4

    .local v16, "k":I
    .local v19, "off":I
    :goto_5
    if-lez v16, :cond_a

    .line 537
    move-object/from16 v0, p0

    move/from16 v2, v24

    move-object/from16 v3, p1

    move/from16 v4, v19

    move-object/from16 v5, p6

    move/from16 v20, v6

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->readType(Ljava/util/List;ZLorg/checkerframework/org/objectweb/asmx/ClassReader;I[Lorg/checkerframework/org/objectweb/asmx/Label;[C)I

    move-result v19

    .line 536
    add-int/lit8 v16, v16, -0x1

    move/from16 v6, v20

    goto :goto_5

    :cond_a
    move/from16 v20, v6

    move-object/from16 v6, p0

    move v0, v7

    move-object v4, v10

    move-object v5, v11

    move-object v7, v15

    move-object/from16 v3, v18

    move/from16 v16, v19

    move/from16 v2, v20

    move/from16 v28, v8

    move-object v8, v1

    move/from16 v1, v28

    .end local v16    # "k":I
    goto :goto_6

    .line 545
    .end local v1    # "locals":Ljava/util/List;
    .end local v18    # "stack":Ljava/util/List;
    .end local v19    # "off":I
    .local v16, "off":I
    :cond_b
    move/from16 v20, v6

    if-ne v7, v0, :cond_c

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v8

    .end local v8    # "methodOff":I
    .local v1, "methodOff":I
    move-object v8, v0

    .line 548
    .local v8, "locals":Ljava/util/List;
    move v0, v7

    move/from16 v2, v20

    .end local v7    # "tag":I
    .local v0, "tag":I
    move-object/from16 v7, p0

    move-object v4, v10

    .end local v10    # "frames":Ljava/util/ArrayList;
    .local v4, "frames":Ljava/util/ArrayList;
    move/from16 v10, v24

    move-object v5, v11

    move-object/from16 v11, p1

    move/from16 v12, v16

    move-object/from16 v13, p6

    move-object/from16 v14, p4

    invoke-direct/range {v7 .. v14}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->readTypes(Ljava/util/List;ZZLorg/checkerframework/org/objectweb/asmx/ClassReader;I[Lorg/checkerframework/org/objectweb/asmx/Label;[C)I

    move-result v3

    .line 557
    .end local v16    # "off":I
    .restart local v3    # "off":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v16, "stack":Ljava/util/List;
    move-object/from16 v6, p0

    move-object v7, v15

    .end local v15    # "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    .local v7, "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    move-object/from16 v15, p0

    move/from16 v18, v24

    move-object/from16 v19, p1

    move/from16 v20, v3

    move-object/from16 v21, p6

    move-object/from16 v22, p4

    invoke-direct/range {v15 .. v22}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->readTypes(Ljava/util/List;ZZLorg/checkerframework/org/objectweb/asmx/ClassReader;I[Lorg/checkerframework/org/objectweb/asmx/Label;[C)I

    move-result v3

    move-object/from16 v28, v16

    move/from16 v16, v3

    move-object/from16 v3, v28

    .line 573
    .local v3, "stack":Ljava/util/List;
    .local v16, "off":I
    :goto_6
    move/from16 v10, v26

    .end local v26    # "offset":I
    .local v10, "offset":I
    add-int v10, v10, v27

    .line 575
    invoke-direct {v6, v10, v5}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->getLabel(I[Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v11

    .line 577
    .local v11, "offsetLabel":Lorg/checkerframework/org/objectweb/asmx/Label;
    new-instance v12, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;

    invoke-direct {v12, v11, v8, v3}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;-><init>(Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/util/List;Ljava/util/List;)V

    move-object v7, v12

    .line 578
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    nop

    .end local v0    # "tag":I
    .end local v3    # "stack":Ljava/util/List;
    .end local v8    # "locals":Ljava/util/List;
    .end local v11    # "offsetLabel":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v27    # "offsetDelta":I
    add-int/lit8 v0, v10, 0x1

    .line 482
    .end local v10    # "offset":I
    .local v0, "offset":I
    add-int/lit8 v25, v25, -0x1

    move-object/from16 v14, p1

    move-object/from16 v13, p4

    move/from16 v12, p5

    move v8, v1

    move-object v10, v4

    move-object v11, v5

    move-object v15, v6

    move-object v5, v7

    move/from16 v3, v16

    move v6, v0

    goto/16 :goto_3

    .line 567
    .end local v0    # "offset":I
    .end local v1    # "methodOff":I
    .end local v4    # "frames":Ljava/util/ArrayList;
    .local v7, "tag":I
    .local v8, "methodOff":I
    .local v10, "frames":Ljava/util/ArrayList;
    .restart local v15    # "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    .restart local v26    # "offset":I
    .restart local v27    # "offsetDelta":I
    :cond_c
    move v0, v7

    move v1, v8

    move-object v4, v10

    move/from16 v10, v26

    .end local v7    # "tag":I
    .end local v8    # "methodOff":I
    .end local v26    # "offset":I
    .local v0, "tag":I
    .restart local v1    # "methodOff":I
    .restart local v4    # "frames":Ljava/util/ArrayList;
    .local v10, "offset":I
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown frame type "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " after offset "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 585
    .end local v0    # "tag":I
    .end local v1    # "methodOff":I
    .end local v4    # "frames":Ljava/util/ArrayList;
    .end local v15    # "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    .end local v16    # "off":I
    .end local v27    # "offsetDelta":I
    .local v3, "off":I
    .restart local v5    # "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    .restart local v6    # "offset":I
    .restart local v8    # "methodOff":I
    .local v10, "frames":Ljava/util/ArrayList;
    :cond_d
    move-object v4, v10

    .end local v10    # "frames":Ljava/util/ArrayList;
    .restart local v4    # "frames":Ljava/util/ArrayList;
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;

    invoke-direct {v0, v4}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 920
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "StackMapTable["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 921
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->frames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 922
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->frames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 921
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 924
    .end local v1    # "i":I
    :cond_0
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 925
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected write(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;[BIII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .locals 25
    .param p1, "cw"    # Lorg/checkerframework/org/objectweb/asmx/ClassWriter;
    .param p2, "code"    # [B
    .param p3, "len"    # I
    .param p4, "maxStack"    # I
    .param p5, "maxLocals"    # I

    .line 595
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>()V

    move-object v8, v0

    .line 597
    .local v8, "bv":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    const v0, 0xffff

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v7, :cond_0

    array-length v1, v7

    if-le v1, v0, :cond_0

    move v1, v10

    goto :goto_0

    :cond_0
    move v1, v9

    :goto_0
    move v11, v1

    .line 598
    .local v11, "isExtCodeSize":Z
    iget-object v1, v6, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->frames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-direct {v6, v1, v8, v11}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->writeSize(ILorg/checkerframework/org/objectweb/asmx/ByteVector;Z)V

    .line 600
    iget-object v1, v6, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->frames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 601
    return-object v8

    .line 604
    :cond_1
    move/from16 v12, p5

    if-le v12, v0, :cond_2

    move v1, v10

    goto :goto_1

    :cond_2
    move v1, v9

    :goto_1
    move v13, v1

    .line 605
    .local v13, "isExtLocals":Z
    move/from16 v14, p4

    if-le v14, v0, :cond_3

    move v0, v10

    goto :goto_2

    :cond_3
    move v0, v9

    :goto_2
    move v15, v0

    .line 608
    .local v15, "isExtStack":Z
    iget-object v0, v6, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->frames:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;

    .line 609
    .local v0, "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->locals:Ljava/util/List;

    .line 610
    .local v1, "locals":Ljava/util/List;
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/Label;->getOffset()I

    move-result v2

    .line 612
    .local v2, "offset":I
    const/4 v3, 0x1

    move-object v5, v1

    move/from16 v16, v2

    move v4, v3

    .end local v1    # "locals":Ljava/util/List;
    .end local v2    # "offset":I
    .local v4, "i":I
    .local v5, "locals":Ljava/util/List;
    .local v16, "offset":I
    :goto_3
    iget-object v1, v6, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->frames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_d

    .line 613
    iget-object v1, v6, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->frames:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;

    .line 615
    .end local v0    # "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    .local v3, "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    iget-object v2, v3, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->locals:Ljava/util/List;

    .line 616
    .local v2, "clocals":Ljava/util/List;
    iget-object v1, v3, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->stack:Ljava/util/List;

    .line 617
    .local v1, "cstack":Ljava/util/List;
    iget-object v0, v3, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Label;->getOffset()I

    move-result v17

    .line 619
    .local v17, "coffset":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 620
    .local v0, "clocalsSize":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    .line 622
    .local v9, "cstackSize":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    .line 624
    .local v10, "localsSize":I
    move/from16 v18, v4

    .end local v4    # "i":I
    .local v18, "i":I
    sub-int v4, v17, v16

    .line 626
    .local v4, "delta":I
    const/16 v19, 0xff

    .line 627
    .local v19, "type":I
    const/16 v20, 0x0

    .line 628
    .local v20, "k":I
    move-object/from16 v21, v1

    .end local v1    # "cstack":Ljava/util/List;
    .local v21, "cstack":Ljava/util/List;
    if-nez v9, :cond_5

    .line 629
    sub-int v20, v0, v10

    .line 630
    packed-switch v20, :pswitch_data_0

    goto :goto_5

    .line 646
    :pswitch_0
    const/16 v19, 0xfc

    goto :goto_5

    .line 640
    :pswitch_1
    const/16 v1, 0x40

    if-ge v4, v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    const/16 v1, 0xfb

    :goto_4
    move/from16 v19, v1

    .line 641
    goto :goto_5

    .line 634
    :pswitch_2
    const/16 v19, 0xf8

    .line 635
    move v10, v0

    .line 636
    nop

    .line 647
    :goto_5
    move/from16 v1, v19

    move/from16 v7, v20

    goto :goto_7

    .line 649
    :cond_5
    const/16 v1, 0x40

    if-ne v10, v0, :cond_7

    const/4 v7, 0x1

    if-ne v9, v7, :cond_8

    .line 651
    const/16 v1, 0x3f

    if-ge v4, v1, :cond_6

    const/16 v1, 0x40

    goto :goto_6

    :cond_6
    const/16 v1, 0xf7

    :goto_6
    move/from16 v19, v1

    move/from16 v7, v20

    goto :goto_7

    .line 649
    :cond_7
    const/4 v7, 0x1

    .line 656
    :cond_8
    move/from16 v1, v19

    move/from16 v7, v20

    .end local v19    # "type":I
    .end local v20    # "k":I
    .local v1, "type":I
    .local v7, "k":I
    :goto_7
    move-object/from16 v19, v3

    .end local v3    # "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    .local v19, "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    const/16 v3, 0xff

    if-eq v1, v3, :cond_c

    .line 658
    const/16 v20, 0x0

    move/from16 v3, v20

    .local v3, "j":I
    :goto_8
    if-ge v3, v10, :cond_b

    move/from16 v22, v10

    const/16 v10, 0xff

    .end local v10    # "localsSize":I
    .local v22, "localsSize":I
    if-eq v1, v10, :cond_a

    .line 659
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move/from16 v23, v1

    .end local v1    # "type":I
    .local v23, "type":I
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 660
    const/16 v1, 0xff

    .end local v23    # "type":I
    .restart local v1    # "type":I
    goto :goto_9

    .line 659
    .end local v1    # "type":I
    .restart local v23    # "type":I
    :cond_9
    move/from16 v1, v23

    .line 658
    .end local v23    # "type":I
    .restart local v1    # "type":I
    :goto_9
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v22

    goto :goto_8

    :cond_a
    move/from16 v23, v1

    .end local v1    # "type":I
    .restart local v23    # "type":I
    goto :goto_a

    .end local v22    # "localsSize":I
    .end local v23    # "type":I
    .restart local v1    # "type":I
    .restart local v10    # "localsSize":I
    :cond_b
    move/from16 v23, v1

    move/from16 v22, v10

    .end local v1    # "type":I
    .end local v10    # "localsSize":I
    .restart local v22    # "localsSize":I
    .restart local v23    # "type":I
    goto :goto_a

    .line 656
    .end local v3    # "j":I
    .end local v22    # "localsSize":I
    .end local v23    # "type":I
    .restart local v1    # "type":I
    .restart local v10    # "localsSize":I
    :cond_c
    move/from16 v22, v10

    .end local v10    # "localsSize":I
    .restart local v22    # "localsSize":I
    move/from16 v23, v1

    .line 664
    .end local v1    # "type":I
    .restart local v23    # "type":I
    :goto_a
    sparse-switch v23, :sswitch_data_0

    .line 710
    move/from16 v20, v0

    .end local v0    # "clocalsSize":I
    .local v20, "clocalsSize":I
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 701
    .end local v20    # "clocalsSize":I
    .restart local v0    # "clocalsSize":I
    :sswitch_0
    const/16 v1, 0xff

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 702
    invoke-direct {v6, v4, v8, v11}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->writeSize(ILorg/checkerframework/org/objectweb/asmx/ByteVector;Z)V

    .line 703
    invoke-direct {v6, v0, v8, v13}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->writeSize(ILorg/checkerframework/org/objectweb/asmx/ByteVector;Z)V

    .line 704
    const/4 v10, 0x0

    move/from16 v20, v0

    .end local v0    # "clocalsSize":I
    .restart local v20    # "clocalsSize":I
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v24, v2

    .end local v2    # "clocals":Ljava/util/List;
    .local v24, "clocals":Ljava/util/List;
    move-object/from16 v2, p1

    move-object/from16 v3, v24

    move v12, v4

    .end local v4    # "delta":I
    .local v12, "delta":I
    move v4, v10

    move-object v10, v5

    .end local v5    # "locals":Ljava/util/List;
    .local v10, "locals":Ljava/util/List;
    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->writeTypeInfos(Lorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ClassWriter;Ljava/util/List;II)V

    .line 705
    invoke-direct {v6, v9, v8, v15}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->writeSize(ILorg/checkerframework/org/objectweb/asmx/ByteVector;Z)V

    .line 706
    const/4 v4, 0x0

    move-object/from16 v3, v21

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->writeTypeInfos(Lorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ClassWriter;Ljava/util/List;II)V

    .line 707
    goto/16 :goto_b

    .line 691
    .end local v10    # "locals":Ljava/util/List;
    .end local v12    # "delta":I
    .end local v20    # "clocalsSize":I
    .end local v24    # "clocals":Ljava/util/List;
    .restart local v0    # "clocalsSize":I
    .restart local v2    # "clocals":Ljava/util/List;
    .restart local v4    # "delta":I
    .restart local v5    # "locals":Ljava/util/List;
    :sswitch_1
    move/from16 v20, v0

    move-object/from16 v24, v2

    move v12, v4

    move-object v10, v5

    .end local v0    # "clocalsSize":I
    .end local v2    # "clocals":Ljava/util/List;
    .end local v4    # "delta":I
    .end local v5    # "locals":Ljava/util/List;
    .restart local v10    # "locals":Ljava/util/List;
    .restart local v12    # "delta":I
    .restart local v20    # "clocalsSize":I
    .restart local v24    # "clocals":Ljava/util/List;
    add-int/lit16 v0, v7, 0xfb

    invoke-virtual {v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 692
    invoke-direct {v6, v12, v8, v11}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->writeSize(ILorg/checkerframework/org/objectweb/asmx/ByteVector;Z)V

    .line 693
    add-int/lit8 v4, v20, -0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, v24

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->writeTypeInfos(Lorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ClassWriter;Ljava/util/List;II)V

    .line 698
    goto/16 :goto_b

    .line 681
    .end local v10    # "locals":Ljava/util/List;
    .end local v12    # "delta":I
    .end local v20    # "clocalsSize":I
    .end local v24    # "clocals":Ljava/util/List;
    .restart local v0    # "clocalsSize":I
    .restart local v2    # "clocals":Ljava/util/List;
    .restart local v4    # "delta":I
    .restart local v5    # "locals":Ljava/util/List;
    :sswitch_2
    move/from16 v20, v0

    move-object/from16 v24, v2

    move v12, v4

    move-object v10, v5

    .end local v0    # "clocalsSize":I
    .end local v2    # "clocals":Ljava/util/List;
    .end local v4    # "delta":I
    .end local v5    # "locals":Ljava/util/List;
    .restart local v10    # "locals":Ljava/util/List;
    .restart local v12    # "delta":I
    .restart local v20    # "clocalsSize":I
    .restart local v24    # "clocals":Ljava/util/List;
    const/16 v0, 0xfb

    invoke-virtual {v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 682
    invoke-direct {v6, v12, v8, v11}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->writeSize(ILorg/checkerframework/org/objectweb/asmx/ByteVector;Z)V

    .line 683
    goto :goto_b

    .line 686
    .end local v10    # "locals":Ljava/util/List;
    .end local v12    # "delta":I
    .end local v20    # "clocalsSize":I
    .end local v24    # "clocals":Ljava/util/List;
    .restart local v0    # "clocalsSize":I
    .restart local v2    # "clocals":Ljava/util/List;
    .restart local v4    # "delta":I
    .restart local v5    # "locals":Ljava/util/List;
    :sswitch_3
    move/from16 v20, v0

    move-object/from16 v24, v2

    move v12, v4

    move-object v10, v5

    .end local v0    # "clocalsSize":I
    .end local v2    # "clocals":Ljava/util/List;
    .end local v4    # "delta":I
    .end local v5    # "locals":Ljava/util/List;
    .restart local v10    # "locals":Ljava/util/List;
    .restart local v12    # "delta":I
    .restart local v20    # "clocalsSize":I
    .restart local v24    # "clocals":Ljava/util/List;
    add-int/lit16 v0, v7, 0xfb

    invoke-virtual {v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 687
    invoke-direct {v6, v12, v8, v11}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->writeSize(ILorg/checkerframework/org/objectweb/asmx/ByteVector;Z)V

    .line 688
    goto :goto_b

    .line 675
    .end local v10    # "locals":Ljava/util/List;
    .end local v12    # "delta":I
    .end local v20    # "clocalsSize":I
    .end local v24    # "clocals":Ljava/util/List;
    .restart local v0    # "clocalsSize":I
    .restart local v2    # "clocals":Ljava/util/List;
    .restart local v4    # "delta":I
    .restart local v5    # "locals":Ljava/util/List;
    :sswitch_4
    move/from16 v20, v0

    move-object/from16 v24, v2

    move v12, v4

    move-object v10, v5

    .end local v0    # "clocalsSize":I
    .end local v2    # "clocals":Ljava/util/List;
    .end local v4    # "delta":I
    .end local v5    # "locals":Ljava/util/List;
    .restart local v10    # "locals":Ljava/util/List;
    .restart local v12    # "delta":I
    .restart local v20    # "clocalsSize":I
    .restart local v24    # "clocals":Ljava/util/List;
    const/16 v0, 0xf7

    invoke-virtual {v8, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 676
    invoke-direct {v6, v12, v8, v11}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->writeSize(ILorg/checkerframework/org/objectweb/asmx/ByteVector;Z)V

    .line 677
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, v21

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->writeTypeInfos(Lorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ClassWriter;Ljava/util/List;II)V

    .line 678
    goto :goto_b

    .line 670
    .end local v10    # "locals":Ljava/util/List;
    .end local v12    # "delta":I
    .end local v20    # "clocalsSize":I
    .end local v24    # "clocals":Ljava/util/List;
    .restart local v0    # "clocalsSize":I
    .restart local v2    # "clocals":Ljava/util/List;
    .restart local v4    # "delta":I
    .restart local v5    # "locals":Ljava/util/List;
    :sswitch_5
    move/from16 v20, v0

    move-object/from16 v24, v2

    move v12, v4

    move-object v10, v5

    .end local v0    # "clocalsSize":I
    .end local v2    # "clocals":Ljava/util/List;
    .end local v4    # "delta":I
    .end local v5    # "locals":Ljava/util/List;
    .restart local v10    # "locals":Ljava/util/List;
    .restart local v12    # "delta":I
    .restart local v20    # "clocalsSize":I
    .restart local v24    # "clocals":Ljava/util/List;
    add-int/lit8 v4, v12, 0x40

    invoke-virtual {v8, v4}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 671
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, v21

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->writeTypeInfos(Lorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ClassWriter;Ljava/util/List;II)V

    .line 672
    goto :goto_b

    .line 666
    .end local v10    # "locals":Ljava/util/List;
    .end local v12    # "delta":I
    .end local v20    # "clocalsSize":I
    .end local v24    # "clocals":Ljava/util/List;
    .restart local v0    # "clocalsSize":I
    .restart local v2    # "clocals":Ljava/util/List;
    .restart local v4    # "delta":I
    .restart local v5    # "locals":Ljava/util/List;
    :sswitch_6
    move/from16 v20, v0

    move-object/from16 v24, v2

    move v12, v4

    move-object v10, v5

    .end local v0    # "clocalsSize":I
    .end local v2    # "clocals":Ljava/util/List;
    .end local v4    # "delta":I
    .end local v5    # "locals":Ljava/util/List;
    .restart local v10    # "locals":Ljava/util/List;
    .restart local v12    # "delta":I
    .restart local v20    # "clocalsSize":I
    .restart local v24    # "clocals":Ljava/util/List;
    invoke-virtual {v8, v12}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 667
    nop

    .line 712
    :goto_b
    add-int/lit8 v16, v17, 0x1

    .line 713
    move-object/from16 v5, v24

    .line 612
    .end local v7    # "k":I
    .end local v9    # "cstackSize":I
    .end local v10    # "locals":Ljava/util/List;
    .end local v12    # "delta":I
    .end local v17    # "coffset":I
    .end local v20    # "clocalsSize":I
    .end local v21    # "cstack":Ljava/util/List;
    .end local v22    # "localsSize":I
    .end local v23    # "type":I
    .end local v24    # "clocals":Ljava/util/List;
    .restart local v5    # "locals":Ljava/util/List;
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v7, p2

    move/from16 v12, p5

    move-object/from16 v0, v19

    const/4 v9, 0x0

    const/4 v10, 0x1

    .end local v18    # "i":I
    .local v4, "i":I
    goto/16 :goto_3

    .line 715
    .end local v4    # "i":I
    .end local v19    # "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    .local v0, "frame":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    :cond_d
    return-object v8

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x40 -> :sswitch_5
        0xf7 -> :sswitch_4
        0xf8 -> :sswitch_3
        0xfb -> :sswitch_2
        0xfc -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method
