.class public Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithRetainedArguments;
.super Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WithRetainedArguments"
.end annotation


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)V"
        }
    .end annotation

    .line 5185
    .local p2, "initialTypes":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/TypeDescription;>;"
    .local p3, "preMethodTypes":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/TypeDescription;>;"
    .local p4, "postMethodTypes":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/TypeDescription;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 5186
    return-void
.end method


# virtual methods
.method public bindExit(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;
    .locals 3
    .param p1, "adviceMethod"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 5192
    new-instance v0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithRetainedArguments;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v1

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithRetainedArguments;->postMethodTypes:Ljava/util/List;

    .line 5193
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithRetainedArguments;->initialTypes:Ljava/util/List;

    .line 5194
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithRetainedArguments;->preMethodTypes:Ljava/util/List;

    .line 5195
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;I)V

    .line 5192
    return-object v0
.end method

.method public compoundLocalVariableLength(I)I
    .locals 3
    .param p1, "localVariableLength"    # I

    .line 5202
    iget v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithRetainedArguments;->localVariableLength:I

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithRetainedArguments;->postMethodTypes:Ljava/util/List;

    .line 5203
    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithRetainedArguments;->initialTypes:Ljava/util/List;

    .line 5204
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithRetainedArguments;->preMethodTypes:Ljava/util/List;

    .line 5205
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v2

    add-int/2addr v1, v2

    .line 5202
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
