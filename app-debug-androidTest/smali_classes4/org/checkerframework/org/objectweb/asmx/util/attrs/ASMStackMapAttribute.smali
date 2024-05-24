.class public Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapAttribute;
.super Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;
.source "ASMStackMapAttribute.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMifiable;
.implements Lorg/checkerframework/org/objectweb/asmx/util/attrs/Traceable;


# instance fields
.field private len:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .param p1, "frames"    # Ljava/util/List;
    .param p2, "len"    # I

    .line 61
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;-><init>(Ljava/util/List;)V

    .line 62
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapAttribute;->len:I

    .line 63
    return-void
.end method

.method static declareLabel(Ljava/lang/StringBuffer;Ljava/util/Map;Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 3
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "labelNames"    # Ljava/util/Map;
    .param p2, "l"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 170
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 172
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

    .line 173
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "Label "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = new Label();\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_0
    return-void
.end method

.method private traceTypeInfo(Ljava/lang/StringBuffer;Ljava/util/Map;Ljava/util/List;)V
    .locals 6
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "labelNames"    # Ljava/util/Map;
    .param p3, "infos"    # Ljava/util/List;

    .line 198
    const-string v0, ""

    .line 199
    .local v0, "sep":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 200
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;

    .line 202
    .local v2, "t":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->ITEM_NAMES:[Ljava/lang/String;

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getType()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    const-string v0, ", "

    .line 204
    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getType()I

    move-result v3

    const/4 v4, 0x7

    const-string v5, ":"

    if-ne v3, v4, :cond_0

    .line 205
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getObject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    :cond_0
    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 208
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getLabel()Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v3

    invoke-virtual {p0, p1, p2, v3}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapAttribute;->appendLabel(Ljava/lang/StringBuffer;Ljava/util/Map;Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 199
    .end local v2    # "t":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
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

    .line 215
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 217
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

    .line 218
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    return-void
.end method

.method public asmify(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "varName"    # Ljava/lang/String;
    .param p3, "labelNames"    # Ljava/util/Map;

    .line 84
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapAttribute;->getFrames()Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "frames":Ljava/util/List;
    const-string v1, "{\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v1, "StackMapAttribute "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "Attr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v1, " = new StackMapAttribute();\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;

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

    invoke-virtual {p0, v2, p1, v3, p3}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapAttribute;->asmify(Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".visitAttribute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v1, "Attr);\n}\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    return-void
.end method

.method asmify(Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1, "f"    # Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    .param p2, "buf"    # Ljava/lang/StringBuffer;
    .param p3, "varName"    # Ljava/lang/String;
    .param p4, "labelNames"    # Ljava/util/Map;

    .line 104
    iget-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-static {p2, p4, v0}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapAttribute;->declareLabel(Ljava/lang/StringBuffer;Ljava/util/Map;Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 105
    const-string v0, "{\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    const-string v0, "StackMapFrame "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 108
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 109
    const-string v1, " = new StackMapFrame();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 112
    const-string v1, ".label = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 113
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 114
    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    iget-object v6, p1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->locals:Ljava/util/List;

    const-string v7, "locals"

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v2 .. v7}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapAttribute;->asmifyTypeInfo(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 117
    iget-object v4, p1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->stack:Ljava/util/List;

    const-string v5, "stack"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapAttribute;->asmifyTypeInfo(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 119
    const-string v0, "cvAttr.frames.add("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v0, "}\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    return-void
.end method

.method asmifyTypeInfo(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "varName"    # Ljava/lang/String;
    .param p3, "labelNames"    # Ljava/util/Map;
    .param p4, "infos"    # Ljava/util/List;
    .param p5, "field"    # Ljava/lang/String;

    .line 130
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 131
    const-string v0, "{\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 133
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;

    .line 134
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

    .line 135
    .local v2, "localName":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getType()I

    move-result v3

    .line 136
    .local v3, "type":I
    const-string v4, "StackMapType "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 137
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 138
    const-string v5, " = StackMapType.getTypeInfo( StackMapType.ITEM_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->ITEM_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v3

    .line 139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 140
    const-string v5, ");\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 151
    :pswitch_0
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getLabel()Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v4

    invoke-static {p1, p3, v4}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapAttribute;->declareLabel(Ljava/lang/StringBuffer;Ljava/util/Map;Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 152
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 153
    const-string v6, ".setLabel("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 154
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getLabel()Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 144
    :pswitch_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 145
    const-string v6, ".setObject(\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 146
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;->getObject()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 147
    const-string v6, "\");\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    nop

    .line 158
    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 159
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 160
    invoke-virtual {v4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 161
    const-string v6, ".add("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 162
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 163
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    .end local v1    # "typeInfo":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapType;
    .end local v2    # "localName":Ljava/lang/String;
    .end local v3    # "type":I
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 165
    .end local v0    # "i":I
    :cond_0
    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    :cond_1
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
    invoke-super/range {p0 .. p6}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->read(Lorg/checkerframework/org/objectweb/asmx/ClassReader;II[CI[Lorg/checkerframework/org/objectweb/asmx/Label;)Lorg/checkerframework/org/objectweb/asmx/Attribute;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;

    .line 80
    .local v0, "attr":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapAttribute;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapAttribute;->getFrames()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapAttribute;-><init>(Ljava/util/List;I)V

    return-object v1
.end method

.method public trace(Ljava/lang/StringBuffer;Ljava/util/Map;)V
    .locals 4
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "labelNames"    # Ljava/util/Map;

    .line 179
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapAttribute;->getFrames()Ljava/util/List;

    move-result-object v0

    .line 180
    .local v0, "frames":Ljava/util/List;
    const-string v1, "[\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 182
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;

    .line 184
    .local v2, "f":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    const-string v3, "    Frame:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    iget-object v3, v2, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-virtual {p0, p1, p2, v3}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapAttribute;->appendLabel(Ljava/lang/StringBuffer;Ljava/util/Map;Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 187
    const-string v3, " locals["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    iget-object v3, v2, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->locals:Ljava/util/List;

    invoke-direct {p0, p1, p2, v3}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapAttribute;->traceTypeInfo(Ljava/lang/StringBuffer;Ljava/util/Map;Ljava/util/List;)V

    .line 189
    const-string v3, "]"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    const-string v3, " stack["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    iget-object v3, v2, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->stack:Ljava/util/List;

    invoke-direct {p0, p1, p2, v3}, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapAttribute;->traceTypeInfo(Ljava/lang/StringBuffer;Ljava/util/Map;Ljava/util/List;)V

    .line 192
    const-string v3, "]\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    .end local v2    # "f":Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    :cond_0
    const-string v1, "  ] length:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/attrs/ASMStackMapAttribute;->len:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    return-void
.end method
