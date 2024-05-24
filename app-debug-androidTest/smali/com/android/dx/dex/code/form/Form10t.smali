.class public final Lcom/android/dx/dex/code/form/Form10t;
.super Lcom/android/dx/dex/code/InsnFormat;
.source "Form10t.java"


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/android/dx/dex/code/form/Form10t;

    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form10t;-><init>()V

    sput-object v0, Lcom/android/dx/dex/code/form/Form10t;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/dx/dex/code/InsnFormat;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public branchFits(Lcom/android/dx/dex/code/TargetInsn;)Z
    .locals 2
    .param p1, "insn"    # Lcom/android/dx/dex/code/TargetInsn;

    .line 73
    invoke-virtual {p1}, Lcom/android/dx/dex/code/TargetInsn;->getTargetOffset()I

    move-result v0

    .line 76
    .local v0, "offset":I
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form10t;->signedFitsInByte(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public codeSize()I
    .locals 1

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 1
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 43
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form10t;->branchString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 1
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;
    .param p2, "noteIndices"    # Z

    .line 49
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form10t;->branchComment(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
    .locals 2
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 61
    instance-of v0, p1, Lcom/android/dx/dex/code/TargetInsn;

    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/dx/dex/code/TargetInsn;

    .line 67
    .local v0, "ti":Lcom/android/dx/dex/code/TargetInsn;
    invoke-virtual {v0}, Lcom/android/dx/dex/code/TargetInsn;->hasTargetOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/form/Form10t;->branchFits(Lcom/android/dx/dex/code/TargetInsn;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 63
    .end local v0    # "ti":Lcom/android/dx/dex/code/TargetInsn;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 2
    .param p1, "out"    # Lcom/android/dx/util/AnnotatedOutput;
    .param p2, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 82
    move-object v0, p2

    check-cast v0, Lcom/android/dx/dex/code/TargetInsn;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/TargetInsn;->getTargetOffset()I

    move-result v0

    .line 84
    .local v0, "offset":I
    and-int/lit16 v1, v0, 0xff

    invoke-static {p2, v1}, Lcom/android/dx/dex/code/form/Form10t;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    move-result v1

    invoke-static {p1, v1}, Lcom/android/dx/dex/code/form/Form10t;->write(Lcom/android/dx/util/AnnotatedOutput;S)V

    .line 85
    return-void
.end method