.class public abstract Lcom/android/dx/rop/code/CstInsn;
.super Lcom/android/dx/rop/code/Insn;
.source "CstInsn.java"


# instance fields
.field private final cst:Lcom/android/dx/rop/cst/Constant;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V
    .locals 2
    .param p1, "opcode"    # Lcom/android/dx/rop/code/Rop;
    .param p2, "position"    # Lcom/android/dx/rop/code/SourcePosition;
    .param p3, "result"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p4, "sources"    # Lcom/android/dx/rop/code/RegisterSpecList;
    .param p5, "cst"    # Lcom/android/dx/rop/cst/Constant;

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/dx/rop/code/Insn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 42
    if-eqz p5, :cond_0

    .line 46
    iput-object p5, p0, Lcom/android/dx/rop/code/CstInsn;->cst:Lcom/android/dx/rop/cst/Constant;

    .line 47
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public contentEquals(Lcom/android/dx/rop/code/Insn;)Z
    .locals 2
    .param p1, "b"    # Lcom/android/dx/rop/code/Insn;

    .line 71
    invoke-super {p0, p1}, Lcom/android/dx/rop/code/Insn;->contentEquals(Lcom/android/dx/rop/code/Insn;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/rop/code/CstInsn;->cst:Lcom/android/dx/rop/cst/Constant;

    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/code/CstInsn;

    .line 72
    invoke-virtual {v1}, Lcom/android/dx/rop/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0
.end method

.method public getConstant()Lcom/android/dx/rop/cst/Constant;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/dx/rop/code/CstInsn;->cst:Lcom/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public getInlineString()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/dx/rop/code/CstInsn;->cst:Lcom/android/dx/rop/cst/Constant;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
