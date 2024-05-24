.class public Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapTableAttribute;
.super Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;
.source "ASMStackMapTableAttribute.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMifiable;
.implements Lorg/checkerframework/org/objectweb/asmx/util/attrs/Traceable;


# instance fields
.field private len:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .param p1, "frames"    # Ljava/util/List;
    .param p2, "len"    # I

    .line 61
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;-><init>(Ljava/util/List;)V

    .line 62
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapTableAttribute;->len:I

    .line 63
    return-void
.end method

.method static declareLabel(Ljava/lang/StringBuffer;Ljava/util/Map;Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 3
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "labelNames"    # Ljava/util/Map;
    .param p2, "l"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 161
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "l"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "Label "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = new Label();\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    :cond_0
    return-void
.end method

.method private traceTypeInfo(Ljava/lang/StringBuffer;Ljava/util/Map;Ljava/util/List;)V
    .locals 6
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "labelNames"    # Ljava/util/Map;
    .param p3, "infos"    # Ljava/util/List;

    .line 189
    const-string v0, ""

    .line 190
    .local v0, "sep":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 191
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;

    .line 193
    .local v2, "t":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->ITEM_NAMES:[Ljava/lang/String;

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getType()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    const-string v0, ", "

    .line 195
    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getType()I

    move-result v3

    const/4 v4, 0x7

    const-string v5, ":"

    if-ne v3, v4, :cond_0

    .line 196
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getObject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    :cond_0
    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 199
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getLabel()Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v3

    invoke-virtual {p0, p1, p2, v3}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapTableAttribute;->appendLabel(Ljava/lang/StringBuffer;Ljava/util/Map;Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 190
    .end local v2    # "t":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method protected appendLabel(Ljava/lang/StringBuffer;Ljava/util/Map;Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 3
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "labelNames"    # Ljava/util/Map;
    .param p3, "l"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 206
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    return-void
.end method

.method public asmify(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "varName"    # Ljava/lang/String;
    .param p3, "labelNames"    # Ljava/util/Map;

    .line 84
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapTableAttribute;->getFrames()Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "frames":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const-string v1, "List frames = Collections.EMPTY_LIST;\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 88
    :cond_0
    const-string v1, "List frames = new ArrayList();\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 90
    const-string v2, "{\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;

    .line 92
    .local v2, "f":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    iget-object v3, v2, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-static {p1, p3, v3}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapTableAttribute;->declareLabel(Ljava/lang/StringBuffer;Ljava/util/Map;Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "frame"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "frameVar":Ljava/lang/String;
    iget-object v8, v2, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->locals:Ljava/util/List;

    const-string v9, "locals"

    move-object v4, p0

    move-object v5, p1

    move-object v6, v3

    move-object v7, p3

    invoke-virtual/range {v4 .. v9}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapTableAttribute;->asmifyTypeInfo(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 96
    iget-object v8, v2, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->stack:Ljava/util/List;

    const-string v9, "stack"

    invoke-virtual/range {v4 .. v9}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapTableAttribute;->asmifyTypeInfo(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 98
    const-string v4, "StackMapFrame "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 99
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 100
    const-string v5, " = new StackMapFrame("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v2, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 101
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 102
    const-string v5, ", locals, stack);\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const-string v4, "frames.add("

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ");\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    const-string v4, "}\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .end local v2    # "f":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    .end local v3    # "frameVar":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "i":I
    :cond_1
    :goto_1
    const-string v1, "StackMapTableAttribute "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const-string v1, " = new StackMapTableAttribute(frames);\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    return-void
.end method

.method asmifyTypeInfo(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "varName"    # Ljava/lang/String;
    .param p3, "labelNames"    # Ljava/util/Map;
    .param p4, "infos"    # Ljava/util/List;
    .param p5, "field"    # Ljava/lang/String;

    .line 118
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "List "

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 121
    const-string v1, " = Collections.EMPTY_LIST;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 123
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = new ArrayList();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const-string v0, "{\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 126
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;

    .line 127
    .local v1, "typeInfo":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "localName":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getType()I

    move-result v3

    .line 129
    .local v3, "type":I
    const-string v4, "StackMapType "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 130
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 131
    const-string v5, " = StackMapType.getTypeInfo( StackMapType.ITEM_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->ITEM_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v3

    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 133
    const-string v5, ");\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 144
    :pswitch_0
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getLabel()Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v4

    invoke-static {p1, p3, v4}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapTableAttribute;->declareLabel(Ljava/lang/StringBuffer;Ljava/util/Map;Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 145
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 146
    const-string v6, ".setLabel("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 147
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getLabel()Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 148
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 137
    :pswitch_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 138
    const-string v6, ".setObject(\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 139
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getObject()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 140
    const-string v6, "\");\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    nop

    .line 151
    :goto_1
    invoke-virtual {p1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 152
    const-string v6, ".add("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 153
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 154
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    .end local v1    # "typeInfo":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    .end local v2    # "localName":Ljava/lang/String;
    .end local v3    # "type":I
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 156
    .end local v0    # "i":I
    :cond_1
    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected read(Lorg/checkerframework/org/objectweb/asmx/ClassReader;II[CI[Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/Attribute;
    .locals 3
    .param p1, "cr"    # Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "buf"    # [C
    .param p5, "codeOff"    # I
    .param p6, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 73
    invoke-super/range {p0 .. p6}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->read(Lorg/checkerframework/org/objectweb/asmx/ClassReader;II[CI[Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/Attribute;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;

    .line 80
    .local v0, "attr":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapTableAttribute;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapTableAttribute;->getFrames()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapTableAttribute;-><init>(Ljava/util/List;I)V

    return-object v1
.end method

.method public trace(Ljava/lang/StringBuffer;Ljava/util/Map;)V
    .locals 4
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "labelNames"    # Ljava/util/Map;

    .line 170
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapTableAttribute;->getFrames()Ljava/util/List;

    move-result-object v0

    .line 171
    .local v0, "frames":Ljava/util/List;
    const-string v1, "[\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 173
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;

    .line 175
    .local v2, "f":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    const-string v3, "    Frame:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    iget-object v3, v2, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-virtual {p0, p1, p2, v3}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapTableAttribute;->appendLabel(Ljava/lang/StringBuffer;Ljava/util/Map;Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 178
    const-string v3, " locals["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    iget-object v3, v2, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->locals:Ljava/util/List;

    invoke-direct {p0, p1, p2, v3}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapTableAttribute;->traceTypeInfo(Ljava/lang/StringBuffer;Ljava/util/Map;Ljava/util/List;)V

    .line 180
    const-string v3, "]"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    const-string v3, " stack["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    iget-object v3, v2, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->stack:Ljava/util/List;

    invoke-direct {p0, p1, p2, v3}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapTableAttribute;->traceTypeInfo(Ljava/lang/StringBuffer;Ljava/util/Map;Ljava/util/List;)V

    .line 183
    const-string v3, "]\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    .end local v2    # "f":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "i":I
    :cond_0
    const-string v1, "  ] length:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapTableAttribute;->len:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    return-void
.end method
