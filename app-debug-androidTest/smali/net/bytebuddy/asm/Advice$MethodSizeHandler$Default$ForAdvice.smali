.class public Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ForAdvice"
.end annotation


# instance fields
.field private final adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private final baseLocalVariableLength:I

.field private localVariableLengthPadding:I

.field private stackSizePadding:I

.field final synthetic this$0:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;
    .param p2, "adviceMethod"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .param p3, "baseLocalVariableLength"    # I

    .line 5283
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5284
    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 5285
    iput p3, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->baseLocalVariableLength:I

    .line 5286
    return-void
.end method


# virtual methods
.method public recordMaxima(II)V
    .locals 3
    .param p1, "stackSize"    # I
    .param p2, "localVariableLength"    # I

    .line 5320
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;

    iget v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->stackSizePadding:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->requireStackSize(I)V

    .line 5321
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 5322
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getStackSize()I

    move-result v1

    sub-int v1, p2, v1

    iget v2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->baseLocalVariableLength:I

    add-int/2addr v1, v2

    iget v2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->localVariableLengthPadding:I

    add-int/2addr v1, v2

    .line 5321
    invoke-virtual {v0, v1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->requireLocalVariableLength(I)V

    .line 5325
    return-void
.end method

.method public requireLocalVariableLength(I)V
    .locals 1
    .param p1, "localVariableLength"    # I

    .line 5299
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->requireLocalVariableLength(I)V

    .line 5300
    return-void
.end method

.method public requireLocalVariableLengthPadding(I)V
    .locals 1
    .param p1, "localVariableLengthPadding"    # I

    .line 5313
    iget v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->localVariableLengthPadding:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->localVariableLengthPadding:I

    .line 5314
    return-void
.end method

.method public requireStackSize(I)V
    .locals 1
    .param p1, "stackSize"    # I

    .line 5292
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->this$0:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->requireStackSize(I)V

    .line 5293
    return-void
.end method

.method public requireStackSizePadding(I)V
    .locals 1
    .param p1, "stackSizePadding"    # I

    .line 5306
    iget v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->stackSizePadding:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;->stackSizePadding:I

    .line 5307
    return-void
.end method
