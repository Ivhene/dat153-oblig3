.class public Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithCopiedArguments;
.super Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WithCopiedArguments"
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

    .line 5226
    .local p2, "initialTypes":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/TypeDescription;>;"
    .local p3, "preMethodTypes":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/TypeDescription;>;"
    .local p4, "postMethodTypes":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/TypeDescription;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 5227
    return-void
.end method


# virtual methods
.method public bindExit(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;
    .locals 3
    .param p1, "adviceMethod"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 5233
    new-instance v0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithCopiedArguments;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithCopiedArguments;->initialTypes:Ljava/util/List;

    .line 5234
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithCopiedArguments;->preMethodTypes:Ljava/util/List;

    .line 5235
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithCopiedArguments;->postMethodTypes:Ljava/util/List;

    .line 5236
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;I)V

    .line 5233
    return-object v0
.end method

.method public compoundLocalVariableLength(I)I
    .locals 3
    .param p1, "localVariableLength"    # I

    .line 5243
    iget v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithCopiedArguments;->localVariableLength:I

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithCopiedArguments;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 5244
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithCopiedArguments;->postMethodTypes:Ljava/util/List;

    .line 5245
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithCopiedArguments;->initialTypes:Ljava/util/List;

    .line 5246
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithCopiedArguments;->preMethodTypes:Ljava/util/List;

    .line 5247
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v2

    add-int/2addr v1, v2

    .line 5243
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
