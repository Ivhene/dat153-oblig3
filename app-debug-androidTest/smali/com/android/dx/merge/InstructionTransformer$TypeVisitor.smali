.class Lcom/android/dx/merge/InstructionTransformer$TypeVisitor;
.super Ljava/lang/Object;
.source "InstructionTransformer.java"

# interfaces
.implements Lcom/android/dx/io/CodeReader$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/merge/InstructionTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TypeVisitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dx/merge/InstructionTransformer;


# direct methods
.method private constructor <init>(Lcom/android/dx/merge/InstructionTransformer;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/dx/merge/InstructionTransformer$TypeVisitor;->this$0:Lcom/android/dx/merge/InstructionTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dx/merge/InstructionTransformer;Lcom/android/dx/merge/InstructionTransformer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dx/merge/InstructionTransformer;
    .param p2, "x1"    # Lcom/android/dx/merge/InstructionTransformer$1;

    .line 94
    invoke-direct {p0, p1}, Lcom/android/dx/merge/InstructionTransformer$TypeVisitor;-><init>(Lcom/android/dx/merge/InstructionTransformer;)V

    return-void
.end method


# virtual methods
.method public visit([Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/DecodedInstruction;)V
    .locals 6
    .param p1, "all"    # [Lcom/android/dx/io/instructions/DecodedInstruction;
    .param p2, "one"    # Lcom/android/dx/io/instructions/DecodedInstruction;

    .line 97
    invoke-virtual {p2}, Lcom/android/dx/io/instructions/DecodedInstruction;->getIndex()I

    move-result v0

    .line 98
    .local v0, "typeId":I
    iget-object v1, p0, Lcom/android/dx/merge/InstructionTransformer$TypeVisitor;->this$0:Lcom/android/dx/merge/InstructionTransformer;

    invoke-static {v1}, Lcom/android/dx/merge/InstructionTransformer;->access$900(Lcom/android/dx/merge/InstructionTransformer;)Lcom/android/dx/merge/IndexMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v1

    .line 99
    .local v1, "mappedId":I
    invoke-virtual {p2}, Lcom/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v2

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 100
    .local v2, "isJumbo":Z
    :goto_0
    invoke-static {v2, v1}, Lcom/android/dx/merge/InstructionTransformer;->access$1000(ZI)V

    .line 101
    iget-object v3, p0, Lcom/android/dx/merge/InstructionTransformer$TypeVisitor;->this$0:Lcom/android/dx/merge/InstructionTransformer;

    invoke-static {v3}, Lcom/android/dx/merge/InstructionTransformer;->access$700(Lcom/android/dx/merge/InstructionTransformer;)[Lcom/android/dx/io/instructions/DecodedInstruction;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dx/merge/InstructionTransformer$TypeVisitor;->this$0:Lcom/android/dx/merge/InstructionTransformer;

    invoke-static {v4}, Lcom/android/dx/merge/InstructionTransformer;->access$808(Lcom/android/dx/merge/InstructionTransformer;)I

    move-result v4

    invoke-virtual {p2, v1}, Lcom/android/dx/io/instructions/DecodedInstruction;->withIndex(I)Lcom/android/dx/io/instructions/DecodedInstruction;

    move-result-object v5

    aput-object v5, v3, v4

    .line 102
    return-void
.end method
