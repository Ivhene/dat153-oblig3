.class public Lcom/android/dx/cf/code/ByteCatchList$Item;
.super Ljava/lang/Object;
.source "ByteCatchList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/cf/code/ByteCatchList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private final endPc:I

.field private final exceptionClass:Lcom/android/dx/rop/cst/CstType;

.field private final handlerPc:I

.field private final startPc:I


# direct methods
.method public constructor <init>(IIILcom/android/dx/rop/cst/CstType;)V
    .locals 2
    .param p1, "startPc"    # I
    .param p2, "endPc"    # I
    .param p3, "handlerPc"    # I
    .param p4, "exceptionClass"    # Lcom/android/dx/rop/cst/CstType;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    if-ltz p1, :cond_2

    .line 254
    if-lt p2, p1, :cond_1

    .line 258
    if-ltz p3, :cond_0

    .line 262
    iput p1, p0, Lcom/android/dx/cf/code/ByteCatchList$Item;->startPc:I

    .line 263
    iput p2, p0, Lcom/android/dx/cf/code/ByteCatchList$Item;->endPc:I

    .line 264
    iput p3, p0, Lcom/android/dx/cf/code/ByteCatchList$Item;->handlerPc:I

    .line 265
    iput-object p4, p0, Lcom/android/dx/cf/code/ByteCatchList$Item;->exceptionClass:Lcom/android/dx/rop/cst/CstType;

    .line 266
    return-void

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handlerPc < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endPc < startPc"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startPc < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public covers(I)Z
    .locals 1
    .param p1, "pc"    # I

    .line 314
    iget v0, p0, Lcom/android/dx/cf/code/ByteCatchList$Item;->startPc:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/dx/cf/code/ByteCatchList$Item;->endPc:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEndPc()I
    .locals 1

    .line 284
    iget v0, p0, Lcom/android/dx/cf/code/ByteCatchList$Item;->endPc:I

    return v0
.end method

.method public getExceptionClass()Lcom/android/dx/rop/cst/CstType;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/dx/cf/code/ByteCatchList$Item;->exceptionClass:Lcom/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/dx/rop/cst/CstType;->OBJECT:Lcom/android/dx/rop/cst/CstType;

    :goto_0
    return-object v0
.end method

.method public getHandlerPc()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/android/dx/cf/code/ByteCatchList$Item;->handlerPc:I

    return v0
.end method

.method public getStartPc()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/android/dx/cf/code/ByteCatchList$Item;->startPc:I

    return v0
.end method
