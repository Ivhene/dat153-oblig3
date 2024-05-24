.class final Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchStack;
.super Ljava/lang/Object;
.source "MethodGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BranchStack"
.end annotation


# instance fields
.field private final branchTargets:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final visitedTargets:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;",
            "Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 958
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchStack;->branchTargets:Ljava/util/Stack;

    .line 959
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchStack;->visitedTargets:Ljava/util/Hashtable;

    return-void
.end method

.method private visit(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;I)Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchTarget;
    .locals 2
    .param p1, "target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "stackDepth"    # I

    .line 980
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchTarget;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchTarget;-><init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;I)V

    .line 981
    .local v0, "bt":Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchTarget;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchStack;->visitedTargets:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    return-object v0
.end method

.method private visited(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Z
    .locals 1
    .param p1, "target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 987
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchStack;->visitedTargets:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public pop()Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchTarget;
    .locals 1

    .line 971
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchStack;->branchTargets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchStack;->branchTargets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchTarget;

    .line 973
    .local v0, "bt":Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchTarget;
    return-object v0

    .line 975
    .end local v0    # "bt":Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchTarget;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public push(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;I)V
    .locals 2
    .param p1, "target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "stackDepth"    # I

    .line 963
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchStack;->visited(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    return-void

    .line 966
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchStack;->branchTargets:Ljava/util/Stack;

    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchStack;->visit(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;I)Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchTarget;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    return-void
.end method
