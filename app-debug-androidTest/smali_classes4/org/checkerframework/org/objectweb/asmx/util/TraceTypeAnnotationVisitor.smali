.class public Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;
.super Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;
.source "TraceTypeAnnotationVisitor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;


# instance fields
.field protected doubleTab:Ljava/lang/String;

.field protected xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

.field private xbound_index:I

.field private xexception_index:I

.field private xindex:I

.field private xlength:I

.field private xlocation_length:I

.field private xlocations:[Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

.field private xlocations_index:I

.field private xoffset:I

.field private xparam_index:I

.field private xstart_pc:I

.field private xtarget_type:I

.field private xtype_index:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->doubleTab:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private finishExtendedPart()V
    .locals 7

    .line 70
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 71
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v1, "\n  extended annotation: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->doubleTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "target_type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xtarget_type:I

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xtarget_type:I

    invoke-static {v0}, Lcom/sun/tools/javac/code/TargetType;->fromTargetTypeValue(I)Lcom/sun/tools/javac/code/TargetType;

    move-result-object v0

    .line 76
    .local v0, "tt":Lcom/sun/tools/javac/code/TargetType;
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "type_index: "

    const-string v4, "param_index: "

    const-string v5, "index: "

    const-string v6, "offset: "

    packed-switch v2, :pswitch_data_0

    .line 178
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized target type: + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xtarget_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :pswitch_0
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->doubleTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xparam_index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    goto/16 :goto_0

    .line 166
    :pswitch_1
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->doubleTab:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v4, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xoffset:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->doubleTab:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xtype_index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    goto/16 :goto_0

    .line 149
    :pswitch_2
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->doubleTab:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xtype_index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    goto/16 :goto_0

    .line 138
    :pswitch_3
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->doubleTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xparam_index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->doubleTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "bound_index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xbound_index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    goto/16 :goto_0

    .line 129
    :pswitch_4
    goto :goto_0

    .line 122
    :pswitch_5
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->doubleTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "FIXME"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    goto :goto_0

    .line 114
    :pswitch_6
    goto :goto_0

    .line 105
    :pswitch_7
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->doubleTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "start_pc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xstart_pc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->doubleTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xlength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->doubleTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xindex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    goto :goto_0

    .line 94
    :pswitch_8
    goto :goto_0

    .line 87
    :pswitch_9
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->doubleTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xoffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    nop

    .line 182
    :goto_0
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xlocation_length:I

    if-eqz v2, :cond_2

    .line 183
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->doubleTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location_length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xlocation_length:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->doubleTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "locations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    const/4 v2, 0x1

    .line 186
    .local v2, "first":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xlocations:[Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 187
    if-nez v2, :cond_0

    .line 188
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    :cond_0
    const/4 v2, 0x0

    .line 191
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xlocations:[Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 186
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 193
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    .end local v2    # "first":Z
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->text:Ljava/util/List;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected createTraceTypeAnnotationVisitor()Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;
    .locals 1

    .line 63
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;-><init>()V

    return-object v0
.end method

.method public visitEnd()V
    .locals 0

    .line 54
    invoke-super {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceAnnotationVisitor;->visitEnd()V

    .line 55
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->finishExtendedPart()V

    .line 56
    return-void
.end method

.method public visitXBoundIndex(I)V
    .locals 1
    .param p1, "bound_index"    # I

    .line 265
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xbound_index:I

    .line 266
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXBoundIndex(I)V

    .line 269
    :cond_0
    return-void
.end method

.method public visitXExceptionIndex(I)V
    .locals 1
    .param p1, "exception_index"    # I

    .line 279
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xexception_index:I

    .line 280
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    if-eqz v0, :cond_0

    .line 281
    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXExceptionIndex(I)V

    .line 283
    :cond_0
    return-void
.end method

.method public visitXIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 251
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xindex:I

    .line 252
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    if-eqz v0, :cond_0

    .line 253
    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXIndex(I)V

    .line 255
    :cond_0
    return-void
.end method

.method public visitXLength(I)V
    .locals 1
    .param p1, "length"    # I

    .line 244
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xlength:I

    .line 245
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXLength(I)V

    .line 248
    :cond_0
    return-void
.end method

.method public visitXLocation(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;)V
    .locals 2
    .param p1, "location"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 223
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xlocations:[Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xlocations_index:I

    aput-object p1, v0, v1

    .line 224
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xlocations_index:I

    .line 225
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    if-eqz v0, :cond_0

    .line 226
    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXLocation(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;)V

    .line 228
    :cond_0
    return-void
.end method

.method public visitXLocationLength(I)V
    .locals 1
    .param p1, "location_length"    # I

    .line 214
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xlocation_length:I

    .line 215
    new-array v0, p1, [Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xlocations:[Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xlocations_index:I

    .line 217
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXLocationLength(I)V

    .line 220
    :cond_0
    return-void
.end method

.method public visitXNameAndArgsSize()V
    .locals 0

    .line 286
    return-void
.end method

.method public visitXNumEntries(I)V
    .locals 1
    .param p1, "num_entries"    # I

    .line 231
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXNumEntries(I)V

    .line 234
    :cond_0
    return-void
.end method

.method public visitXOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 207
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xoffset:I

    .line 208
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    if-eqz v0, :cond_0

    .line 209
    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXOffset(I)V

    .line 211
    :cond_0
    return-void
.end method

.method public visitXParamIndex(I)V
    .locals 1
    .param p1, "param_index"    # I

    .line 258
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xparam_index:I

    .line 259
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXParamIndex(I)V

    .line 262
    :cond_0
    return-void
.end method

.method public visitXStartPc(I)V
    .locals 1
    .param p1, "start_pc"    # I

    .line 237
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xstart_pc:I

    .line 238
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXStartPc(I)V

    .line 241
    :cond_0
    return-void
.end method

.method public visitXTargetType(I)V
    .locals 1
    .param p1, "target_type"    # I

    .line 200
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xtarget_type:I

    .line 201
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    if-eqz v0, :cond_0

    .line 202
    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXTargetType(I)V

    .line 204
    :cond_0
    return-void
.end method

.method public visitXTypeIndex(I)V
    .locals 1
    .param p1, "type_index"    # I

    .line 272
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xtype_index:I

    .line 273
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/util/TraceTypeAnnotationVisitor;->xav:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    if-eqz v0, :cond_0

    .line 274
    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitXTypeIndex(I)V

    .line 276
    :cond_0
    return-void
.end method
