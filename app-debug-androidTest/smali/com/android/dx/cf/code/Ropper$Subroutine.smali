.class Lcom/android/dx/cf/code/Ropper$Subroutine;
.super Ljava/lang/Object;
.source "Ropper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/cf/code/Ropper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Subroutine"
.end annotation


# instance fields
.field private callerBlocks:Ljava/util/BitSet;

.field private retBlocks:Ljava/util/BitSet;

.field private startBlock:I

.field final synthetic this$0:Lcom/android/dx/cf/code/Ropper;


# direct methods
.method constructor <init>(Lcom/android/dx/cf/code/Ropper;I)V
    .locals 2
    .param p2, "startBlock"    # I

    .line 235
    iput-object p1, p0, Lcom/android/dx/cf/code/Ropper$Subroutine;->this$0:Lcom/android/dx/cf/code/Ropper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput p2, p0, Lcom/android/dx/cf/code/Ropper$Subroutine;->startBlock:I

    .line 237
    new-instance v0, Ljava/util/BitSet;

    invoke-static {p1}, Lcom/android/dx/cf/code/Ropper;->access$100(Lcom/android/dx/cf/code/Ropper;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/cf/code/Ropper$Subroutine;->retBlocks:Ljava/util/BitSet;

    .line 238
    new-instance v0, Ljava/util/BitSet;

    invoke-static {p1}, Lcom/android/dx/cf/code/Ropper;->access$100(Lcom/android/dx/cf/code/Ropper;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/cf/code/Ropper$Subroutine;->callerBlocks:Ljava/util/BitSet;

    .line 239
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/dx/cf/code/Ropper;->access$202(Lcom/android/dx/cf/code/Ropper;Z)Z

    .line 240
    return-void
.end method

.method constructor <init>(Lcom/android/dx/cf/code/Ropper;II)V
    .locals 0
    .param p2, "startBlock"    # I
    .param p3, "retBlock"    # I

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/android/dx/cf/code/Ropper$Subroutine;-><init>(Lcom/android/dx/cf/code/Ropper;I)V

    .line 251
    invoke-virtual {p0, p3}, Lcom/android/dx/cf/code/Ropper$Subroutine;->addRetBlock(I)V

    .line 252
    return-void
.end method

.method static synthetic access$1000(Lcom/android/dx/cf/code/Ropper$Subroutine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/cf/code/Ropper$Subroutine;

    .line 222
    iget v0, p0, Lcom/android/dx/cf/code/Ropper$Subroutine;->startBlock:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/dx/cf/code/Ropper$Subroutine;)Ljava/util/BitSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/cf/code/Ropper$Subroutine;

    .line 222
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper$Subroutine;->retBlocks:Ljava/util/BitSet;

    return-object v0
.end method


# virtual methods
.method addCallerBlock(I)V
    .locals 1
    .param p1, "label"    # I

    .line 277
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper$Subroutine;->callerBlocks:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 278
    return-void
.end method

.method addRetBlock(I)V
    .locals 1
    .param p1, "retBlock"    # I

    .line 268
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper$Subroutine;->retBlocks:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 269
    return-void
.end method

.method getStartBlock()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/android/dx/cf/code/Ropper$Subroutine;->startBlock:I

    return v0
.end method

.method getSuccessors()Lcom/android/dx/util/IntList;
    .locals 5

    .line 291
    new-instance v0, Lcom/android/dx/util/IntList;

    iget-object v1, p0, Lcom/android/dx/cf/code/Ropper$Subroutine;->callerBlocks:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/dx/util/IntList;-><init>(I)V

    .line 299
    .local v0, "successors":Lcom/android/dx/util/IntList;
    iget-object v1, p0, Lcom/android/dx/cf/code/Ropper$Subroutine;->callerBlocks:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .local v1, "label":I
    :goto_0
    if-ltz v1, :cond_0

    .line 301
    iget-object v3, p0, Lcom/android/dx/cf/code/Ropper$Subroutine;->this$0:Lcom/android/dx/cf/code/Ropper;

    invoke-static {v3, v1}, Lcom/android/dx/cf/code/Ropper;->access$300(Lcom/android/dx/cf/code/Ropper;I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v3

    .line 302
    .local v3, "subCaller":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v3}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/dx/util/IntList;->add(I)V

    .line 300
    .end local v3    # "subCaller":Lcom/android/dx/rop/code/BasicBlock;
    iget-object v3, p0, Lcom/android/dx/cf/code/Ropper$Subroutine;->callerBlocks:Ljava/util/BitSet;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 305
    .end local v1    # "label":I
    :cond_0
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 307
    return-object v0
.end method

.method mergeToSuccessors(Lcom/android/dx/cf/code/Frame;[I)V
    .locals 11
    .param p1, "frame"    # Lcom/android/dx/cf/code/Frame;
    .param p2, "workSet"    # [I

    .line 319
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper$Subroutine;->callerBlocks:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .local v0, "label":I
    :goto_0
    if-ltz v0, :cond_1

    .line 321
    iget-object v2, p0, Lcom/android/dx/cf/code/Ropper$Subroutine;->this$0:Lcom/android/dx/cf/code/Ropper;

    invoke-static {v2, v0}, Lcom/android/dx/cf/code/Ropper;->access$300(Lcom/android/dx/cf/code/Ropper;I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v2

    .line 322
    .local v2, "subCaller":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v3

    .line 324
    .local v3, "succLabel":I
    iget v4, p0, Lcom/android/dx/cf/code/Ropper$Subroutine;->startBlock:I

    invoke-virtual {p1, v4, v0}, Lcom/android/dx/cf/code/Frame;->subFrameForLabel(II)Lcom/android/dx/cf/code/Frame;

    move-result-object v10

    .line 326
    .local v10, "subFrame":Lcom/android/dx/cf/code/Frame;
    if-eqz v10, :cond_0

    .line 327
    iget-object v4, p0, Lcom/android/dx/cf/code/Ropper$Subroutine;->this$0:Lcom/android/dx/cf/code/Ropper;

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v5, v3

    move-object v8, v10

    move-object v9, p2

    invoke-static/range {v4 .. v9}, Lcom/android/dx/cf/code/Ropper;->access$400(Lcom/android/dx/cf/code/Ropper;IILcom/android/dx/cf/code/Ropper$Subroutine;Lcom/android/dx/cf/code/Frame;[I)V

    goto :goto_1

    .line 330
    :cond_0
    invoke-static {p2, v0}, Lcom/android/dx/util/Bits;->set([II)V

    .line 320
    .end local v2    # "subCaller":Lcom/android/dx/rop/code/BasicBlock;
    .end local v3    # "succLabel":I
    .end local v10    # "subFrame":Lcom/android/dx/cf/code/Frame;
    :goto_1
    iget-object v2, p0, Lcom/android/dx/cf/code/Ropper$Subroutine;->callerBlocks:Ljava/util/BitSet;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    .line 333
    .end local v0    # "label":I
    :cond_1
    return-void
.end method
