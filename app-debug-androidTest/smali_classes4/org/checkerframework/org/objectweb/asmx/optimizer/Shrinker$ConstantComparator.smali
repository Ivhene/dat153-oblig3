.class Lorg/checkerframework/org/objectweb/asmx/optimizer/Shrinker$ConstantComparator;
.super Ljava/lang/Object;
.source "Shrinker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/optimizer/Shrinker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConstantComparator"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSort(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)I
    .locals 1
    .param p1, "c"    # Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 142
    iget-char v0, p1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->type:C

    sparse-switch v0, :sswitch_data_0

    .line 164
    const/16 v0, 0xa

    return v0

    .line 152
    :sswitch_0
    const/4 v0, 0x4

    return v0

    .line 158
    :sswitch_1
    const/4 v0, 0x7

    return v0

    .line 154
    :sswitch_2
    const/4 v0, 0x5

    return v0

    .line 162
    :sswitch_3
    const/16 v0, 0x9

    return v0

    .line 146
    :sswitch_4
    const/4 v0, 0x1

    return v0

    .line 144
    :sswitch_5
    const/4 v0, 0x0

    return v0

    .line 160
    :sswitch_6
    const/16 v0, 0x8

    return v0

    .line 148
    :sswitch_7
    const/4 v0, 0x2

    return v0

    .line 150
    :sswitch_8
    const/4 v0, 0x3

    return v0

    .line 156
    :sswitch_9
    const/4 v0, 0x6

    return v0

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_9
        0x44 -> :sswitch_8
        0x46 -> :sswitch_7
        0x47 -> :sswitch_6
        0x49 -> :sswitch_5
        0x4a -> :sswitch_4
        0x4d -> :sswitch_3
        0x53 -> :sswitch_2
        0x54 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 105
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 106
    .local v0, "c1":Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 107
    .local v1, "c2":Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Shrinker$ConstantComparator;->getSort(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)I

    move-result v2

    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Shrinker$ConstantComparator;->getSort(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 108
    .local v2, "d":I
    if-nez v2, :cond_0

    .line 109
    iget-char v3, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->type:C

    sparse-switch v3, :sswitch_data_0

    .line 129
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    iget-object v4, v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 130
    if-nez v2, :cond_0

    .line 131
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal2:Ljava/lang/String;

    iget-object v4, v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 132
    if-nez v2, :cond_0

    .line 133
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal3:Ljava/lang/String;

    iget-object v4, v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal3:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 123
    :sswitch_0
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    iget-object v4, v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 124
    if-nez v2, :cond_0

    .line 125
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal2:Ljava/lang/String;

    iget-object v4, v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 113
    :sswitch_1
    new-instance v3, Ljava/lang/Long;

    iget-wide v4, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->longVal:J

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    new-instance v4, Ljava/lang/Long;

    iget-wide v5, v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->longVal:J

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v3

    return v3

    .line 111
    :sswitch_2
    new-instance v3, Ljava/lang/Integer;

    iget v4, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->intVal:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    iget v5, v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->intVal:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v3

    return v3

    .line 115
    :sswitch_3
    new-instance v3, Ljava/lang/Float;

    iget v4, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->floatVal:F

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(F)V

    new-instance v4, Ljava/lang/Float;

    iget v5, v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->floatVal:F

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v3, v4}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v3

    return v3

    .line 117
    :sswitch_4
    new-instance v3, Ljava/lang/Double;

    iget-wide v4, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->doubleVal:D

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    new-instance v4, Ljava/lang/Double;

    iget-wide v5, v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->doubleVal:D

    invoke-direct {v4, v5, v6}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v3, v4}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v3

    return v3

    .line 121
    :sswitch_5
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    iget-object v4, v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->strVal1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 138
    :cond_0
    :goto_0
    return v2

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_5
        0x44 -> :sswitch_4
        0x46 -> :sswitch_3
        0x49 -> :sswitch_2
        0x4a -> :sswitch_1
        0x53 -> :sswitch_5
        0x54 -> :sswitch_0
        0x73 -> :sswitch_5
    .end sparse-switch
.end method
