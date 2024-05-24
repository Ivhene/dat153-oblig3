.class public Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;
.super Lorg/checkerframework/org/apache/bcel/generic/Type;
.source "ReturnaddressType.java"


# static fields
.field public static final NO_TARGET:Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;


# instance fields
.field private returnTarget:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;->NO_TARGET:Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 42
    const/16 v0, 0x10

    const-string v1, "<return address>"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;-><init>(BLjava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 2
    .param p1, "returnTarget"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<return address targeting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;-><init>(BLjava/lang/String;)V

    .line 52
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;->returnTarget:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "rat"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 72
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 73
    return v1

    .line 75
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;

    .line 76
    .local v0, "that":Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;->returnTarget:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-eqz v2, :cond_2

    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;->returnTarget:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-nez v3, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 77
    :cond_2
    :goto_0
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;->returnTarget:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-ne v3, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;->returnTarget:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;->returnTarget:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    return v0

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
