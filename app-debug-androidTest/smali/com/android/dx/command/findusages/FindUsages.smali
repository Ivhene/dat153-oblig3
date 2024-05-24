.class public final Lcom/android/dx/command/findusages/FindUsages;
.super Ljava/lang/Object;
.source "FindUsages.java"


# instance fields
.field private final codeReader:Lcom/android/dx/io/CodeReader;

.field private currentClass:Lcom/android/dex/ClassDef;

.field private currentMethod:Lcom/android/dex/ClassData$Method;

.field private final dex:Lcom/android/dex/Dex;

.field private final fieldIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final methodIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final out:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Lcom/android/dex/Dex;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "declaredBy"    # Ljava/lang/String;
    .param p3, "memberName"    # Ljava/lang/String;
    .param p4, "out"    # Ljava/io/PrintWriter;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/android/dx/io/CodeReader;

    invoke-direct {v0}, Lcom/android/dx/io/CodeReader;-><init>()V

    iput-object v0, p0, Lcom/android/dx/command/findusages/FindUsages;->codeReader:Lcom/android/dx/io/CodeReader;

    .line 45
    iput-object p1, p0, Lcom/android/dx/command/findusages/FindUsages;->dex:Lcom/android/dex/Dex;

    .line 46
    iput-object p4, p0, Lcom/android/dx/command/findusages/FindUsages;->out:Ljava/io/PrintWriter;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 49
    .local v0, "typeStringIndexes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 50
    .local v1, "memberNameIndexes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 51
    .local v2, "declaredByPattern":Ljava/util/regex/Pattern;
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 52
    .local v3, "memberNamePattern":Ljava/util/regex/Pattern;
    invoke-virtual {p1}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v4

    .line 53
    .local v4, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 54
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 55
    .local v6, "string":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 56
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 59
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v6    # "string":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 62
    .end local v5    # "i":I
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 67
    :cond_3
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/dx/command/findusages/FindUsages;->methodIds:Ljava/util/Set;

    .line 68
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/dx/command/findusages/FindUsages;->fieldIds:Ljava/util/Set;

    .line 69
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 70
    .local v6, "typeStringIndex":I
    invoke-virtual {p1}, Lcom/android/dex/Dex;->typeIds()Ljava/util/List;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v7

    .line 71
    .local v7, "typeIndex":I
    if-gez v7, :cond_4

    .line 72
    goto :goto_1

    .line 74
    :cond_4
    iget-object v8, p0, Lcom/android/dx/command/findusages/FindUsages;->methodIds:Ljava/util/Set;

    invoke-direct {p0, p1, v1, v7}, Lcom/android/dx/command/findusages/FindUsages;->getMethodIds(Lcom/android/dex/Dex;Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 75
    iget-object v8, p0, Lcom/android/dx/command/findusages/FindUsages;->fieldIds:Ljava/util/Set;

    invoke-direct {p0, p1, v1, v7}, Lcom/android/dx/command/findusages/FindUsages;->getFieldIds(Lcom/android/dex/Dex;Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 76
    .end local v6    # "typeStringIndex":I
    .end local v7    # "typeIndex":I
    goto :goto_1

    .line 78
    :cond_5
    iget-object v5, p0, Lcom/android/dx/command/findusages/FindUsages;->codeReader:Lcom/android/dx/io/CodeReader;

    new-instance v6, Lcom/android/dx/command/findusages/FindUsages$1;

    invoke-direct {v6, p0, p4, p1}, Lcom/android/dx/command/findusages/FindUsages$1;-><init>(Lcom/android/dx/command/findusages/FindUsages;Ljava/io/PrintWriter;Lcom/android/dex/Dex;)V

    invoke-virtual {v5, v6}, Lcom/android/dx/io/CodeReader;->setFieldVisitor(Lcom/android/dx/io/CodeReader$Visitor;)V

    .line 90
    iget-object v5, p0, Lcom/android/dx/command/findusages/FindUsages;->codeReader:Lcom/android/dx/io/CodeReader;

    new-instance v6, Lcom/android/dx/command/findusages/FindUsages$2;

    invoke-direct {v6, p0, p4, p1}, Lcom/android/dx/command/findusages/FindUsages$2;-><init>(Lcom/android/dx/command/findusages/FindUsages;Ljava/io/PrintWriter;Lcom/android/dex/Dex;)V

    invoke-virtual {v5, v6}, Lcom/android/dx/io/CodeReader;->setMethodVisitor(Lcom/android/dx/io/CodeReader$Visitor;)V

    .line 100
    return-void

    .line 63
    :cond_6
    :goto_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/dx/command/findusages/FindUsages;->fieldIds:Ljava/util/Set;

    iput-object v5, p0, Lcom/android/dx/command/findusages/FindUsages;->methodIds:Ljava/util/Set;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/command/findusages/FindUsages;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/command/findusages/FindUsages;

    .line 34
    iget-object v0, p0, Lcom/android/dx/command/findusages/FindUsages;->fieldIds:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dx/command/findusages/FindUsages;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/command/findusages/FindUsages;

    .line 34
    invoke-direct {p0}, Lcom/android/dx/command/findusages/FindUsages;->location()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dx/command/findusages/FindUsages;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/command/findusages/FindUsages;

    .line 34
    iget-object v0, p0, Lcom/android/dx/command/findusages/FindUsages;->methodIds:Ljava/util/Set;

    return-object v0
.end method

.method private findAssignableTypes(Lcom/android/dex/Dex;I)Ljava/util/Set;
    .locals 8
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "typeIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dex/Dex;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 193
    .local v0, "assignableTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {p1}, Lcom/android/dex/Dex;->classDefs()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dex/ClassDef;

    .line 196
    .local v2, "classDef":Lcom/android/dex/ClassDef;
    invoke-virtual {v2}, Lcom/android/dex/ClassDef;->getSupertypeIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    invoke-virtual {v2}, Lcom/android/dex/ClassDef;->getTypeIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {v2}, Lcom/android/dex/ClassDef;->getInterfaces()[S

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-short v6, v3, v5

    .line 202
    .local v6, "implemented":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 203
    invoke-virtual {v2}, Lcom/android/dex/ClassDef;->getTypeIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    goto :goto_2

    .line 201
    .end local v6    # "implemented":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 207
    .end local v2    # "classDef":Lcom/android/dex/ClassDef;
    :cond_2
    :goto_2
    goto :goto_0

    .line 209
    :cond_3
    return-object v0
.end method

.method private getFieldIds(Lcom/android/dex/Dex;Ljava/util/Set;I)Ljava/util/Set;
    .locals 5
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p3, "declaringType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dex/Dex;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 157
    .local p2, "memberNameIndexes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 158
    .local v0, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 159
    .local v1, "fieldIndex":I
    invoke-virtual {p1}, Lcom/android/dex/Dex;->fieldIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dex/FieldId;

    .line 160
    .local v3, "fieldId":Lcom/android/dex/FieldId;
    invoke-virtual {v3}, Lcom/android/dex/FieldId;->getNameIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    invoke-virtual {v3}, Lcom/android/dex/FieldId;->getDeclaringClassIndex()I

    move-result v4

    if-ne p3, v4, :cond_0

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    nop

    .end local v3    # "fieldId":Lcom/android/dex/FieldId;
    add-int/lit8 v1, v1, 0x1

    .line 165
    goto :goto_0

    .line 166
    :cond_1
    return-object v0
.end method

.method private getMethodIds(Lcom/android/dex/Dex;Ljava/util/Set;I)Ljava/util/Set;
    .locals 6
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p3, "declaringType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dex/Dex;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 174
    .local p2, "memberNameIndexes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p3}, Lcom/android/dx/command/findusages/FindUsages;->findAssignableTypes(Lcom/android/dex/Dex;I)Ljava/util/Set;

    move-result-object v0

    .line 176
    .local v0, "subtypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 177
    .local v1, "methods":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 178
    .local v2, "methodIndex":I
    invoke-virtual {p1}, Lcom/android/dex/Dex;->methodIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dex/MethodId;

    .line 179
    .local v4, "method":Lcom/android/dex/MethodId;
    invoke-virtual {v4}, Lcom/android/dex/MethodId;->getNameIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 180
    invoke-virtual {v4}, Lcom/android/dex/MethodId;->getDeclaringClassIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 181
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_0
    nop

    .end local v4    # "method":Lcom/android/dex/MethodId;
    add-int/lit8 v2, v2, 0x1

    .line 184
    goto :goto_0

    .line 185
    :cond_1
    return-object v1
.end method

.method private location()Ljava/lang/String;
    .locals 5

    .line 103
    iget-object v0, p0, Lcom/android/dx/command/findusages/FindUsages;->dex:Lcom/android/dex/Dex;

    invoke-virtual {v0}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/command/findusages/FindUsages;->currentClass:Lcom/android/dex/ClassDef;

    invoke-virtual {v1}, Lcom/android/dex/ClassDef;->getTypeIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/dx/command/findusages/FindUsages;->currentMethod:Lcom/android/dex/ClassData$Method;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/dx/command/findusages/FindUsages;->dex:Lcom/android/dex/Dex;

    invoke-virtual {v1}, Lcom/android/dex/Dex;->methodIds()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/command/findusages/FindUsages;->currentMethod:Lcom/android/dex/ClassData$Method;

    invoke-virtual {v2}, Lcom/android/dex/ClassData$Method;->getMethodIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dex/MethodId;

    .line 106
    .local v1, "methodId":Lcom/android/dex/MethodId;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dx/command/findusages/FindUsages;->dex:Lcom/android/dex/Dex;

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

    .line 108
    .end local v1    # "methodId":Lcom/android/dex/MethodId;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public findUsages()V
    .locals 12

    .line 116
    iget-object v0, p0, Lcom/android/dx/command/findusages/FindUsages;->fieldIds:Ljava/util/Set;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/dx/command/findusages/FindUsages;->methodIds:Ljava/util/Set;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/dx/command/findusages/FindUsages;->dex:Lcom/android/dex/Dex;

    invoke-virtual {v0}, Lcom/android/dex/Dex;->classDefs()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dex/ClassDef;

    .line 121
    .local v1, "classDef":Lcom/android/dex/ClassDef;
    iput-object v1, p0, Lcom/android/dx/command/findusages/FindUsages;->currentClass:Lcom/android/dex/ClassDef;

    .line 122
    iput-object v2, p0, Lcom/android/dx/command/findusages/FindUsages;->currentMethod:Lcom/android/dex/ClassData$Method;

    .line 124
    invoke-virtual {v1}, Lcom/android/dex/ClassDef;->getClassDataOffset()I

    move-result v2

    if-nez v2, :cond_1

    .line 125
    goto :goto_0

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/android/dx/command/findusages/FindUsages;->dex:Lcom/android/dex/Dex;

    invoke-virtual {v2, v1}, Lcom/android/dex/Dex;->readClassData(Lcom/android/dex/ClassDef;)Lcom/android/dex/ClassData;

    move-result-object v2

    .line 129
    .local v2, "classData":Lcom/android/dex/ClassData;
    invoke-virtual {v2}, Lcom/android/dex/ClassData;->allFields()[Lcom/android/dex/ClassData$Field;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_3

    aget-object v7, v3, v6

    .line 130
    .local v7, "field":Lcom/android/dex/ClassData$Field;
    invoke-virtual {v7}, Lcom/android/dex/ClassData$Field;->getFieldIndex()I

    move-result v8

    .line 131
    .local v8, "fieldIndex":I
    iget-object v9, p0, Lcom/android/dx/command/findusages/FindUsages;->fieldIds:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 132
    iget-object v9, p0, Lcom/android/dx/command/findusages/FindUsages;->out:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/dx/command/findusages/FindUsages;->location()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " field declared "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/dx/command/findusages/FindUsages;->dex:Lcom/android/dex/Dex;

    invoke-virtual {v11}, Lcom/android/dex/Dex;->fieldIds()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    .end local v7    # "field":Lcom/android/dex/ClassData$Field;
    .end local v8    # "fieldIndex":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 136
    :cond_3
    invoke-virtual {v2}, Lcom/android/dex/ClassData;->allMethods()[Lcom/android/dex/ClassData$Method;

    move-result-object v3

    array-length v4, v3

    :goto_2
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    .line 137
    .local v6, "method":Lcom/android/dex/ClassData$Method;
    iput-object v6, p0, Lcom/android/dx/command/findusages/FindUsages;->currentMethod:Lcom/android/dex/ClassData$Method;

    .line 138
    invoke-virtual {v6}, Lcom/android/dex/ClassData$Method;->getMethodIndex()I

    move-result v7

    .line 139
    .local v7, "methodIndex":I
    iget-object v8, p0, Lcom/android/dx/command/findusages/FindUsages;->methodIds:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 140
    iget-object v8, p0, Lcom/android/dx/command/findusages/FindUsages;->out:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/dx/command/findusages/FindUsages;->location()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " method declared "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/dx/command/findusages/FindUsages;->dex:Lcom/android/dex/Dex;

    invoke-virtual {v10}, Lcom/android/dex/Dex;->methodIds()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    :cond_4
    invoke-virtual {v6}, Lcom/android/dex/ClassData$Method;->getCodeOffset()I

    move-result v8

    if-eqz v8, :cond_5

    .line 143
    iget-object v8, p0, Lcom/android/dx/command/findusages/FindUsages;->codeReader:Lcom/android/dx/io/CodeReader;

    iget-object v9, p0, Lcom/android/dx/command/findusages/FindUsages;->dex:Lcom/android/dex/Dex;

    invoke-virtual {v9, v6}, Lcom/android/dex/Dex;->readCode(Lcom/android/dex/ClassData$Method;)Lcom/android/dex/Code;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/dex/Code;->getInstructions()[S

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/dx/io/CodeReader;->visitAll([S)V

    .line 136
    .end local v6    # "method":Lcom/android/dex/ClassData$Method;
    .end local v7    # "methodIndex":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 146
    .end local v1    # "classDef":Lcom/android/dex/ClassDef;
    .end local v2    # "classData":Lcom/android/dex/ClassData;
    :cond_6
    goto/16 :goto_0

    .line 148
    :cond_7
    iput-object v2, p0, Lcom/android/dx/command/findusages/FindUsages;->currentClass:Lcom/android/dex/ClassDef;

    .line 149
    iput-object v2, p0, Lcom/android/dx/command/findusages/FindUsages;->currentMethod:Lcom/android/dex/ClassData$Method;

    .line 150
    return-void

    .line 117
    :cond_8
    :goto_3
    return-void
.end method
