.class public Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;
.super Ljava/util/Properties;
.source "NameMapping.java"


# instance fields
.field public final unused:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 50
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->load(Ljava/io/InputStream;)V

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->unused:Ljava/util/Set;

    .line 52
    return-void
.end method

.method private fix(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/Type;
    .locals 4
    .param p1, "t"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 89
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 92
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getElementType()Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->fix(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDimensions()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "i":I
    :cond_1
    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    return-object v1

    .line 98
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    return-object p1
.end method


# virtual methods
.method public fix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "desc"    # Ljava/lang/String;

    .line 75
    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-static {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    .line 77
    .local v0, "arguments":[Lorg/checkerframework/org/objectweb/asmx/Type;
    invoke-static {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getReturnType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    .line 78
    .local v1, "result":Lorg/checkerframework/org/objectweb/asmx/Type;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 79
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->fix(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v3

    aput-object v3, v0, v2

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->fix(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    .line 82
    invoke-static {v1, v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getMethodDescriptor(Lorg/checkerframework/org/objectweb/asmx/Type;[Lorg/checkerframework/org/objectweb/asmx/Type;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 84
    .end local v0    # "arguments":[Lorg/checkerframework/org/objectweb/asmx/Type;
    .end local v1    # "result":Lorg/checkerframework/org/objectweb/asmx/Type;
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->fix(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 55
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 57
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 58
    .local v1, "p":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 59
    const/16 v3, 0x28

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 60
    .local v3, "q":I
    if-eq v3, v2, :cond_0

    .line 61
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .end local v3    # "q":I
    :goto_0
    goto :goto_1

    .line 66
    :cond_1
    move-object v0, p1

    .line 68
    .end local v1    # "p":I
    :goto_1
    goto :goto_2

    .line 69
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->unused:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 71
    :goto_2
    return-object v0
.end method
