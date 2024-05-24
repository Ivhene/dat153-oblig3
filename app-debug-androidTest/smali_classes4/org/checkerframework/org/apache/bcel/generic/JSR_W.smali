.class public Lorg/checkerframework/org/apache/bcel/generic/JSR_W;
.super Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;
.source "JSR_W.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 1
    .param p1, "target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 41
    const/16 v0, 0xc9

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;-><init>(SLorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 42
    const/4 v0, 0x5

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;->setLength(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 78
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackProducer(Lorg/checkerframework/org/apache/bcel/generic/StackProducer;)V

    .line 79
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitBranchInstruction(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)V

    .line 80
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitJsrInstruction(Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;)V

    .line 81
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitJSR_W(Lorg/checkerframework/org/apache/bcel/generic/JSR_W;)V

    .line 82
    return-void
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/JSR_W;->getTargetOffset()I

    move-result v0

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;->setIndex(I)V

    .line 53
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;->getOpcode()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 54
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 55
    return-void
.end method

.method protected initFromFile(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Z)V
    .locals 1
    .param p1, "bytes"    # Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .param p2, "wide"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v0

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;->setIndex(I)V

    .line 64
    const/4 v0, 0x5

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;->setLength(I)V

    .line 65
    return-void
.end method