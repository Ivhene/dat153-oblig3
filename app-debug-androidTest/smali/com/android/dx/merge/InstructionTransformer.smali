.class final Lcom/android/dx/merge/InstructionTransformer;
.super Ljava/lang/Object;
.source "InstructionTransformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/merge/InstructionTransformer$CallSiteVisitor;,
        Lcom/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;,
        Lcom/android/dx/merge/InstructionTransformer$MethodVisitor;,
        Lcom/android/dx/merge/InstructionTransformer$TypeVisitor;,
        Lcom/android/dx/merge/InstructionTransformer$FieldVisitor;,
        Lcom/android/dx/merge/InstructionTransformer$StringVisitor;,
        Lcom/android/dx/merge/InstructionTransformer$GenericVisitor;
    }
.end annotation


# instance fields
.field private indexMap:Lcom/android/dx/merge/IndexMap;

.field private mappedAt:I

.field private mappedInstructions:[Lcom/android/dx/io/instructions/DecodedInstruction;

.field private final reader:Lcom/android/dx/io/CodeReader;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/android/dx/io/CodeReader;

    invoke-direct {v0}, Lcom/android/dx/io/CodeReader;-><init>()V

    iput-object v0, p0, Lcom/android/dx/merge/InstructionTransformer;->reader:Lcom/android/dx/io/CodeReader;

    .line 35
    new-instance v1, Lcom/android/dx/merge/InstructionTransformer$GenericVisitor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/dx/merge/InstructionTransformer$GenericVisitor;-><init>(Lcom/android/dx/merge/InstructionTransformer;Lcom/android/dx/merge/InstructionTransformer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/io/CodeReader;->setAllVisitors(Lcom/android/dx/io/CodeReader$Visitor;)V

    .line 36
    new-instance v1, Lcom/android/dx/merge/InstructionTransformer$StringVisitor;

    invoke-direct {v1, p0, v2}, Lcom/android/dx/merge/InstructionTransformer$StringVisitor;-><init>(Lcom/android/dx/merge/InstructionTransformer;Lcom/android/dx/merge/InstructionTransformer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/io/CodeReader;->setStringVisitor(Lcom/android/dx/io/CodeReader$Visitor;)V

    .line 37
    new-instance v1, Lcom/android/dx/merge/InstructionTransformer$TypeVisitor;

    invoke-direct {v1, p0, v2}, Lcom/android/dx/merge/InstructionTransformer$TypeVisitor;-><init>(Lcom/android/dx/merge/InstructionTransformer;Lcom/android/dx/merge/InstructionTransformer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/io/CodeReader;->setTypeVisitor(Lcom/android/dx/io/CodeReader$Visitor;)V

    .line 38
    new-instance v1, Lcom/android/dx/merge/InstructionTransformer$FieldVisitor;

    invoke-direct {v1, p0, v2}, Lcom/android/dx/merge/InstructionTransformer$FieldVisitor;-><init>(Lcom/android/dx/merge/InstructionTransformer;Lcom/android/dx/merge/InstructionTransformer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/io/CodeReader;->setFieldVisitor(Lcom/android/dx/io/CodeReader$Visitor;)V

    .line 39
    new-instance v1, Lcom/android/dx/merge/InstructionTransformer$MethodVisitor;

    invoke-direct {v1, p0, v2}, Lcom/android/dx/merge/InstructionTransformer$MethodVisitor;-><init>(Lcom/android/dx/merge/InstructionTransformer;Lcom/android/dx/merge/InstructionTransformer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/io/CodeReader;->setMethodVisitor(Lcom/android/dx/io/CodeReader$Visitor;)V

    .line 40
    new-instance v1, Lcom/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;

    invoke-direct {v1, p0, v2}, Lcom/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;-><init>(Lcom/android/dx/merge/InstructionTransformer;Lcom/android/dx/merge/InstructionTransformer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/io/CodeReader;->setMethodAndProtoVisitor(Lcom/android/dx/io/CodeReader$Visitor;)V

    .line 41
    new-instance v1, Lcom/android/dx/merge/InstructionTransformer$CallSiteVisitor;

    invoke-direct {v1, p0, v2}, Lcom/android/dx/merge/InstructionTransformer$CallSiteVisitor;-><init>(Lcom/android/dx/merge/InstructionTransformer;Lcom/android/dx/merge/InstructionTransformer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/io/CodeReader;->setCallSiteVisitor(Lcom/android/dx/io/CodeReader$Visitor;)V

    .line 42
    return-void
.end method

.method static synthetic access$1000(ZI)V
    .locals 0
    .param p0, "x0"    # Z
    .param p1, "x1"    # I

    .line 26
    invoke-static {p0, p1}, Lcom/android/dx/merge/InstructionTransformer;->jumboCheck(ZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/dx/merge/InstructionTransformer;)[Lcom/android/dx/io/instructions/DecodedInstruction;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/merge/InstructionTransformer;

    .line 26
    iget-object v0, p0, Lcom/android/dx/merge/InstructionTransformer;->mappedInstructions:[Lcom/android/dx/io/instructions/DecodedInstruction;

    return-object v0
.end method

.method static synthetic access$808(Lcom/android/dx/merge/InstructionTransformer;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/dx/merge/InstructionTransformer;

    .line 26
    iget v0, p0, Lcom/android/dx/merge/InstructionTransformer;->mappedAt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/dx/merge/InstructionTransformer;->mappedAt:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/dx/merge/InstructionTransformer;)Lcom/android/dx/merge/IndexMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/merge/InstructionTransformer;

    .line 26
    iget-object v0, p0, Lcom/android/dx/merge/InstructionTransformer;->indexMap:Lcom/android/dx/merge/IndexMap;

    return-object v0
.end method

.method private static jumboCheck(ZI)V
    .locals 3
    .param p0, "isJumbo"    # Z
    .param p1, "newIndex"    # I

    .line 136
    if-nez p0, :cond_1

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Lcom/android/dex/DexIndexOverflowException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot merge new index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into a non-jumbo instruction!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dex/DexIndexOverflowException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public transform(Lcom/android/dx/merge/IndexMap;[S)[S
    .locals 7
    .param p1, "indexMap"    # Lcom/android/dx/merge/IndexMap;
    .param p2, "encodedInstructions"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dex/DexException;
        }
    .end annotation

    .line 45
    nop

    .line 46
    invoke-static {p2}, Lcom/android/dx/io/instructions/DecodedInstruction;->decodeAll([S)[Lcom/android/dx/io/instructions/DecodedInstruction;

    move-result-object v0

    .line 47
    .local v0, "decodedInstructions":[Lcom/android/dx/io/instructions/DecodedInstruction;
    array-length v1, v0

    .line 49
    .local v1, "size":I
    iput-object p1, p0, Lcom/android/dx/merge/InstructionTransformer;->indexMap:Lcom/android/dx/merge/IndexMap;

    .line 50
    new-array v2, v1, [Lcom/android/dx/io/instructions/DecodedInstruction;

    iput-object v2, p0, Lcom/android/dx/merge/InstructionTransformer;->mappedInstructions:[Lcom/android/dx/io/instructions/DecodedInstruction;

    .line 51
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/dx/merge/InstructionTransformer;->mappedAt:I

    .line 52
    iget-object v3, p0, Lcom/android/dx/merge/InstructionTransformer;->reader:Lcom/android/dx/io/CodeReader;

    invoke-virtual {v3, v0}, Lcom/android/dx/io/CodeReader;->visitAll([Lcom/android/dx/io/instructions/DecodedInstruction;)V

    .line 54
    new-instance v3, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;

    invoke-direct {v3, v1}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;-><init>(I)V

    .line 55
    .local v3, "out":Lcom/android/dx/io/instructions/ShortArrayCodeOutput;
    iget-object v4, p0, Lcom/android/dx/merge/InstructionTransformer;->mappedInstructions:[Lcom/android/dx/io/instructions/DecodedInstruction;

    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 56
    .local v6, "instruction":Lcom/android/dx/io/instructions/DecodedInstruction;
    if-eqz v6, :cond_0

    .line 57
    invoke-virtual {v6, v3}, Lcom/android/dx/io/instructions/DecodedInstruction;->encode(Lcom/android/dx/io/instructions/CodeOutput;)V

    .line 55
    .end local v6    # "instruction":Lcom/android/dx/io/instructions/DecodedInstruction;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/dx/merge/InstructionTransformer;->indexMap:Lcom/android/dx/merge/IndexMap;

    .line 62
    invoke-virtual {v3}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->getArray()[S

    move-result-object v2

    return-object v2
.end method
