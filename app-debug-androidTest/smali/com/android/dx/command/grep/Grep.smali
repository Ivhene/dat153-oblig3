.class public final Lcom/android/dx/command/grep/Grep;
.super Ljava/lang/Object;
.source "Grep.java"


# instance fields
.field private final codeReader:Lcom/android/dx/io/CodeReader;

.field private count:I

.field private currentClass:Lcom/android/dex/ClassDef;

.field private currentMethod:Lcom/android/dex/ClassData$Method;

.field private final dex:Lcom/android/dex/Dex;

.field private final out:Ljava/io/PrintWriter;

.field private final stringIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dex/Dex;Ljava/util/regex/Pattern;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "out"    # Ljava/io/PrintWriter;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/dx/io/CodeReader;

    invoke-direct {v0}, Lcom/android/dx/io/CodeReader;-><init>()V

    iput-object v0, p0, Lcom/android/dx/command/grep/Grep;->codeReader:Lcom/android/dx/io/CodeReader;

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/dx/command/grep/Grep;->count:I

    .line 43
    iput-object p1, p0, Lcom/android/dx/command/grep/Grep;->dex:Lcom/android/dex/Dex;

    .line 44
    iput-object p3, p0, Lcom/android/dx/command/grep/Grep;->out:Ljava/io/PrintWriter;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/dx/command/grep/Grep;->getStringIds(Lcom/android/dex/Dex;Ljava/util/regex/Pattern;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dx/command/grep/Grep;->stringIds:Ljava/util/Set;

    .line 48
    new-instance v1, Lcom/android/dx/command/grep/Grep$1;

    invoke-direct {v1, p0}, Lcom/android/dx/command/grep/Grep$1;-><init>(Lcom/android/dx/command/grep/Grep;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/io/CodeReader;->setStringVisitor(Lcom/android/dx/io/CodeReader$Visitor;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/command/grep/Grep;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dx/command/grep/Grep;
    .param p1, "x1"    # I

    .line 31
    invoke-direct {p0, p1}, Lcom/android/dx/command/grep/Grep;->encounterString(I)V

    return-void
.end method

.method private encounterString(I)V
    .locals 3
    .param p1, "index"    # I

    .line 70
    iget-object v0, p0, Lcom/android/dx/command/grep/Grep;->stringIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/dx/command/grep/Grep;->out:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/dx/command/grep/Grep;->location()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/command/grep/Grep;->dex:Lcom/android/dex/Dex;

    invoke-virtual {v2}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    iget v0, p0, Lcom/android/dx/command/grep/Grep;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dx/command/grep/Grep;->count:I

    .line 74
    :cond_0
    return-void
.end method

.method private getStringIds(Lcom/android/dex/Dex;Ljava/util/regex/Pattern;)Ljava/util/Set;
    .locals 5
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dex/Dex;",
            "Ljava/util/regex/Pattern;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 122
    .local v0, "stringIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 123
    .local v1, "stringIndex":I
    invoke-virtual {p1}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 124
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    nop

    .end local v3    # "s":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 128
    goto :goto_0

    .line 129
    :cond_1
    return-object v0
.end method

.method private location()Ljava/lang/String;
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/android/dx/command/grep/Grep;->dex:Lcom/android/dex/Dex;

    invoke-virtual {v0}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/command/grep/Grep;->currentClass:Lcom/android/dex/ClassDef;

    invoke-virtual {v1}, Lcom/android/dex/ClassDef;->getTypeIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/dx/command/grep/Grep;->currentMethod:Lcom/android/dex/ClassData$Method;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/dx/command/grep/Grep;->dex:Lcom/android/dex/Dex;

    invoke-virtual {v1}, Lcom/android/dex/Dex;->methodIds()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/command/grep/Grep;->currentMethod:Lcom/android/dex/ClassData$Method;

    invoke-virtual {v2}, Lcom/android/dex/ClassData$Method;->getMethodIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dex/MethodId;

    .line 80
    .local v1, "methodId":Lcom/android/dex/MethodId;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dx/command/grep/Grep;->dex:Lcom/android/dex/Dex;

    invoke-virtual {v3}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/dex/MethodId;->getNameIndex()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 82
    .end local v1    # "methodId":Lcom/android/dex/MethodId;
    :cond_0
    return-object v0
.end method

.method private readArray(Lcom/android/dex/EncodedValueReader;)V
    .locals 3
    .param p1, "reader"    # Lcom/android/dex/EncodedValueReader;

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readArray()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->peek()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 63
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/dx/command/grep/Grep;->readArray(Lcom/android/dex/EncodedValueReader;)V

    goto :goto_1

    .line 60
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/dex/EncodedValueReader;->readString()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/dx/command/grep/Grep;->encounterString(I)V

    .line 61
    nop

    .line 57
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public grep()I
    .locals 10

    .line 90
    iget-object v0, p0, Lcom/android/dx/command/grep/Grep;->dex:Lcom/android/dex/Dex;

    invoke-virtual {v0}, Lcom/android/dex/Dex;->classDefs()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dex/ClassDef;

    .line 91
    .local v1, "classDef":Lcom/android/dex/ClassDef;
    iput-object v1, p0, Lcom/android/dx/command/grep/Grep;->currentClass:Lcom/android/dex/ClassDef;

    .line 92
    iput-object v2, p0, Lcom/android/dx/command/grep/Grep;->currentMethod:Lcom/android/dex/ClassData$Method;

    .line 94
    invoke-virtual {v1}, Lcom/android/dex/ClassDef;->getClassDataOffset()I

    move-result v2

    if-nez v2, :cond_0

    .line 95
    goto :goto_0

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/android/dx/command/grep/Grep;->dex:Lcom/android/dex/Dex;

    invoke-virtual {v2, v1}, Lcom/android/dex/Dex;->readClassData(Lcom/android/dex/ClassDef;)Lcom/android/dex/ClassData;

    move-result-object v2

    .line 101
    .local v2, "classData":Lcom/android/dex/ClassData;
    invoke-virtual {v1}, Lcom/android/dex/ClassDef;->getStaticValuesOffset()I

    move-result v3

    .line 102
    .local v3, "staticValuesOffset":I
    if-eqz v3, :cond_1

    .line 103
    new-instance v4, Lcom/android/dex/EncodedValueReader;

    iget-object v5, p0, Lcom/android/dx/command/grep/Grep;->dex:Lcom/android/dex/Dex;

    invoke-virtual {v5, v3}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/dex/EncodedValueReader;-><init>(Lcom/android/dex/util/ByteInput;)V

    invoke-direct {p0, v4}, Lcom/android/dx/command/grep/Grep;->readArray(Lcom/android/dex/EncodedValueReader;)V

    .line 107
    :cond_1
    invoke-virtual {v2}, Lcom/android/dex/ClassData;->allMethods()[Lcom/android/dex/ClassData$Method;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 108
    .local v7, "method":Lcom/android/dex/ClassData$Method;
    iput-object v7, p0, Lcom/android/dx/command/grep/Grep;->currentMethod:Lcom/android/dex/ClassData$Method;

    .line 109
    invoke-virtual {v7}, Lcom/android/dex/ClassData$Method;->getCodeOffset()I

    move-result v8

    if-eqz v8, :cond_2

    .line 110
    iget-object v8, p0, Lcom/android/dx/command/grep/Grep;->codeReader:Lcom/android/dx/io/CodeReader;

    iget-object v9, p0, Lcom/android/dx/command/grep/Grep;->dex:Lcom/android/dex/Dex;

    invoke-virtual {v9, v7}, Lcom/android/dex/Dex;->readCode(Lcom/android/dex/ClassData$Method;)Lcom/android/dex/Code;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/dex/Code;->getInstructions()[S

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/dx/io/CodeReader;->visitAll([S)V

    .line 107
    .end local v7    # "method":Lcom/android/dex/ClassData$Method;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 113
    .end local v1    # "classDef":Lcom/android/dex/ClassDef;
    .end local v2    # "classData":Lcom/android/dex/ClassData;
    .end local v3    # "staticValuesOffset":I
    :cond_3
    goto :goto_0

    .line 115
    :cond_4
    iput-object v2, p0, Lcom/android/dx/command/grep/Grep;->currentClass:Lcom/android/dex/ClassDef;

    .line 116
    iput-object v2, p0, Lcom/android/dx/command/grep/Grep;->currentMethod:Lcom/android/dex/ClassData$Method;

    .line 117
    iget v0, p0, Lcom/android/dx/command/grep/Grep;->count:I

    return v0
.end method
