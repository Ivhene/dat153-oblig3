.class Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;
.super Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;
.source "MethodOffsetClassVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lannotator/scanner/MethodOffsetClassVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MethodOffsetMethodVisitor"
.end annotation


# instance fields
.field private lastLabel:Lorg/checkerframework/org/objectweb/asmx/Label;

.field final synthetic this$0:Lannotator/scanner/MethodOffsetClassVisitor;


# direct methods
.method public constructor <init>(Lannotator/scanner/MethodOffsetClassVisitor;Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 0
    .param p2, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 58
    iput-object p1, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    .line 59
    invoke-direct {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 60
    const/4 p1, 0x0

    iput-object p1, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->lastLabel:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 61
    return-void
.end method

.method private labelOffset()I
    .locals 2

    .line 65
    :try_start_0
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->lastLabel:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Label;->getOffset()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public visitCode()V
    .locals 1

    .line 155
    invoke-super {p0}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitCode()V

    .line 156
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    iget-object v0, v0, Lannotator/scanner/MethodOffsetClassVisitor;->methodCodeOffsetAdapter:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitCode()V

    .line 157
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 211
    invoke-super {p0}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitEnd()V

    .line 212
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    iget-object v0, v0, Lannotator/scanner/MethodOffsetClassVisitor;->methodCodeOffsetAdapter:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitEnd()V

    .line 213
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    iget-object v0, v0, Lannotator/scanner/MethodOffsetClassVisitor;->methodCodeOffsetAdapter:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 1
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 192
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitIincInsn(II)V

    .line 193
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    iget-object v0, v0, Lannotator/scanner/MethodOffsetClassVisitor;->methodCodeOffsetAdapter:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitIincInsn(II)V

    .line 194
    return-void
.end method

.method public visitInsn(I)V
    .locals 1
    .param p1, "opcode"    # I

    .line 161
    invoke-super {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitInsn(I)V

    .line 162
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    iget-object v0, v0, Lannotator/scanner/MethodOffsetClassVisitor;->methodCodeOffsetAdapter:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 163
    return-void
.end method

.method public visitIntInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 120
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitIntInsn(II)V

    .line 121
    const/16 v0, 0xbc

    if-ne p1, v0, :cond_0

    .line 122
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    invoke-static {v0}, Lannotator/scanner/MethodOffsetClassVisitor;->access$000(Lannotator/scanner/MethodOffsetClassVisitor;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->labelOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lannotator/scanner/NewScanner;->addNewToMethod(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    iget-object v0, v0, Lannotator/scanner/MethodOffsetClassVisitor;->methodCodeOffsetAdapter:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitIntInsn(II)V

    .line 125
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/checkerframework/org/objectweb/asmx/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    invoke-static {v0}, Lannotator/scanner/MethodOffsetClassVisitor;->access$000(Lannotator/scanner/MethodOffsetClassVisitor;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-direct {p0}, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->labelOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 148
    invoke-static {v0, v1}, Lannotator/scanner/LambdaScanner;->addLambdaExpressionToMethod(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    iget-object v0, v0, Lannotator/scanner/MethodOffsetClassVisitor;->methodCodeOffsetAdapter:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 180
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 181
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    iget-object v0, v0, Lannotator/scanner/MethodOffsetClassVisitor;->methodCodeOffsetAdapter:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 182
    return-void
.end method

.method public visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 1
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 85
    invoke-super {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 86
    iput-object p1, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->lastLabel:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 87
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    iget-object v0, v0, Lannotator/scanner/MethodOffsetClassVisitor;->methodCodeOffsetAdapter:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 88
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 1
    .param p1, "cst"    # Ljava/lang/Object;

    .line 186
    invoke-super {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    iget-object v0, v0, Lannotator/scanner/MethodOffsetClassVisitor;->methodCodeOffsetAdapter:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p5, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p6, "index"    # I

    .line 74
    invoke-super/range {p0 .. p6}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V

    .line 75
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    .line 76
    invoke-static {v0}, Lannotator/scanner/MethodOffsetClassVisitor;->access$000(Lannotator/scanner/MethodOffsetClassVisitor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4}, Lorg/checkerframework/org/objectweb/asmx/Label;->getOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sun/tools/javac/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/Pair;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/Pair;

    move-result-object v0

    .line 75
    invoke-static {v0, p1}, Lannotator/scanner/LocalVariableScanner;->addToMethodNameIndexMap(Lcom/sun/tools/javac/util/Pair;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    .line 79
    invoke-static {v0}, Lannotator/scanner/MethodOffsetClassVisitor;->access$000(Lannotator/scanner/MethodOffsetClassVisitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lorg/checkerframework/org/objectweb/asmx/Label;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 78
    invoke-static {v0, p1, v1}, Lannotator/scanner/LocalVariableScanner;->addToMethodNameCounter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    iget-object v1, v0, Lannotator/scanner/MethodOffsetClassVisitor;->methodCodeOffsetAdapter:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V

    .line 81
    return-void
.end method

.method public visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 1
    .param p1, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 205
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 206
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    iget-object v0, v0, Lannotator/scanner/MethodOffsetClassVisitor;->methodCodeOffsetAdapter:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 207
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    invoke-static {v0}, Lannotator/scanner/MethodOffsetClassVisitor;->access$000(Lannotator/scanner/MethodOffsetClassVisitor;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-direct {p0}, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->labelOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 135
    invoke-static {v0, v1}, Lannotator/scanner/MethodCallScanner;->addMethodCallToMethod(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    nop

    .line 141
    :goto_0
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    iget-object v0, v0, Lannotator/scanner/MethodOffsetClassVisitor;->methodCodeOffsetAdapter:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 2
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 113
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 114
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    invoke-static {v0}, Lannotator/scanner/MethodOffsetClassVisitor;->access$000(Lannotator/scanner/MethodOffsetClassVisitor;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->labelOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lannotator/scanner/NewScanner;->addNewToMethod(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    iget-object v0, v0, Lannotator/scanner/MethodOffsetClassVisitor;->methodCodeOffsetAdapter:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 116
    return-void
.end method

.method public visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 200
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    iget-object v0, v0, Lannotator/scanner/MethodOffsetClassVisitor;->methodCodeOffsetAdapter:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 201
    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "descriptor"    # Ljava/lang/String;

    .line 92
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitTypeInsn(ILjava/lang/String;)V

    .line 93
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    invoke-static {v0}, Lannotator/scanner/MethodOffsetClassVisitor;->access$000(Lannotator/scanner/MethodOffsetClassVisitor;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-direct {p0}, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->labelOffset()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 104
    invoke-static {v0, v1}, Lannotator/scanner/InstanceOfScanner;->addInstanceOfToMethod(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    invoke-static {v0}, Lannotator/scanner/MethodOffsetClassVisitor;->access$000(Lannotator/scanner/MethodOffsetClassVisitor;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    iget-object v1, v1, Lannotator/scanner/MethodOffsetClassVisitor;->codeOffsetAdapter:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    .line 97
    invoke-virtual {v1}, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->getMethodCodeOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Lannotator/scanner/CastScanner;->addCastToMethod(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    goto :goto_0

    .line 101
    :pswitch_3
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    invoke-static {v0}, Lannotator/scanner/MethodOffsetClassVisitor;->access$000(Lannotator/scanner/MethodOffsetClassVisitor;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->labelOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lannotator/scanner/NewScanner;->addNewToMethod(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    nop

    .line 108
    :goto_0
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    iget-object v0, v0, Lannotator/scanner/MethodOffsetClassVisitor;->methodCodeOffsetAdapter:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 109
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xbb
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public visitVarInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 167
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitVarInsn(II)V

    .line 168
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;->this$0:Lannotator/scanner/MethodOffsetClassVisitor;

    iget-object v0, v0, Lannotator/scanner/MethodOffsetClassVisitor;->methodCodeOffsetAdapter:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitVarInsn(II)V

    .line 169
    return-void
.end method
