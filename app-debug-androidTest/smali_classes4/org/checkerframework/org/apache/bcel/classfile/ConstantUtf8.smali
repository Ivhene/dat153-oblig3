.class public final Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
.super Lorg/checkerframework/org/apache/bcel/classfile/Constant;
.source "ConstantUtf8.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8$CACHE_HOLDER;
    }
.end annotation


# static fields
.field private static final BCEL_STATISTICS:Z

.field private static final MAX_CACHED_SIZE:I

.field private static volatile considered:I

.field private static volatile created:I

.field private static volatile hits:I

.field private static volatile skipped:I


# instance fields
.field private final bytes:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const/4 v0, 0x0

    sput v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->considered:I

    .line 44
    sput v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->hits:I

    .line 45
    sput v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->skipped:I

    .line 46
    sput v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->created:I

    .line 49
    nop

    .line 50
    const-string v0, "bcel.maxcached.size"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->MAX_CACHED_SIZE:I

    .line 51
    const-string v0, "bcel.statistics"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->BCEL_STATISTICS:Z

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8$1;

    invoke-direct {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 91
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 2
    .param p1, "file"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;-><init>(B)V

    .line 144
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->bytes:Ljava/lang/String;

    .line 145
    sget v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->created:I

    add-int/2addr v1, v0

    sput v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->created:I

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "bytes"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;-><init>(B)V

    .line 154
    if-eqz p1, :cond_0

    .line 157
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->bytes:Ljava/lang/String;

    .line 158
    sget v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->created:I

    add-int/2addr v1, v0

    sput v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->created:I

    .line 159
    return-void

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;)V
    .locals 1
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 132
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;-><init>(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method static clearStats()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    sput v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->created:I

    sput v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->skipped:I

    sput v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->considered:I

    sput v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->hits:I

    .line 80
    return-void
.end method

.method public static getCachedInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->MAX_CACHED_SIZE:I

    if-le v0, v1, :cond_0

    .line 98
    sget v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->skipped:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->skipped:I

    .line 99
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 101
    :cond_0
    sget v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->considered:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->considered:I

    .line 102
    const-class v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    monitor-enter v0

    .line 103
    :try_start_0
    invoke-static {}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8$CACHE_HOLDER;->access$000()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 104
    .local v1, "result":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    if-eqz v1, :cond_1

    .line 105
    sget v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->hits:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->hits:I

    .line 106
    monitor-exit v0

    return-object v1

    .line 108
    :cond_1
    new-instance v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-direct {v2, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 109
    invoke-static {}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8$CACHE_HOLDER;->access$000()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    monitor-exit v0

    return-object v1

    .line 111
    .end local v1    # "result":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Ljava/io/DataInput;)Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    .locals 1
    .param p0, "input"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 118
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static printStats()V
    .locals 3

    .line 73
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache hit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->hits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->considered:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->skipped:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " skipped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->created:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ConstantUtf8 objects created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 171
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitConstantUtf8(Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;)V

    .line 172
    return-void
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "file"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 184
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->bytes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public final getBytes()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->bytes:Ljava/lang/String;

    return-object v0
.end method

.method public final setBytes(Ljava/lang/String;)V
    .locals 1
    .param p1, "bytes"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->bytes:Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, "\\n"

    invoke-static {v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
