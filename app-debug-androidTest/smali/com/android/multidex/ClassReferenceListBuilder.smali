.class public Lcom/android/multidex/ClassReferenceListBuilder;
.super Ljava/lang/Object;
.source "ClassReferenceListBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CLASS_EXTENSION:Ljava/lang/String; = ".class"


# instance fields
.field private final classNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Lcom/android/multidex/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/android/multidex/Path;)V
    .locals 1
    .param p1, "path"    # Lcom/android/multidex/Path;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/multidex/ClassReferenceListBuilder;->classNames:Ljava/util/Set;

    .line 47
    iput-object p1, p0, Lcom/android/multidex/ClassReferenceListBuilder;->path:Lcom/android/multidex/Path;

    .line 48
    return-void
.end method

.method private addClassWithHierachy(Ljava/lang/String;)V
    .locals 6
    .param p1, "classBinaryName"    # Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/android/multidex/ClassReferenceListBuilder;->classNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    return-void

    .line 150
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/multidex/ClassReferenceListBuilder;->path:Lcom/android/multidex/Path;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/multidex/Path;->getClass(Ljava/lang/String;)Lcom/android/dx/cf/direct/DirectClassFile;

    move-result-object v0

    .line 151
    .local v0, "classFile":Lcom/android/dx/cf/direct/DirectClassFile;
    iget-object v1, p0, Lcom/android/multidex/ClassReferenceListBuilder;->classNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {v0}, Lcom/android/dx/cf/direct/DirectClassFile;->getSuperclass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v1

    .line 153
    .local v1, "superClass":Lcom/android/dx/rop/cst/CstType;
    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/multidex/ClassReferenceListBuilder;->addClassWithHierachy(Ljava/lang/String;)V

    .line 157
    :cond_1
    invoke-virtual {v0}, Lcom/android/dx/cf/direct/DirectClassFile;->getInterfaces()Lcom/android/dx/rop/type/TypeList;

    move-result-object v2

    .line 158
    .local v2, "interfaceList":Lcom/android/dx/rop/type/TypeList;
    invoke-interface {v2}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v3

    .line 159
    .local v3, "interfaceNumber":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 160
    invoke-interface {v2, v4}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/multidex/ClassReferenceListBuilder;->addClassWithHierachy(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "classFile":Lcom/android/dx/cf/direct/DirectClassFile;
    .end local v1    # "superClass":Lcom/android/dx/rop/cst/CstType;
    .end local v2    # "interfaceList":Lcom/android/dx/rop/type/TypeList;
    .end local v3    # "interfaceNumber":I
    .end local v4    # "i":I
    :cond_2
    goto :goto_1

    .line 162
    :catch_0
    move-exception v0

    .line 165
    :goto_1
    return-void
.end method

.method private addDependencies(Lcom/android/dx/cf/direct/DirectClassFile;)V
    .locals 6
    .param p1, "classFile"    # Lcom/android/dx/cf/direct/DirectClassFile;

    .line 99
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dx/rop/cst/ConstantPool;->getEntries()[Lcom/android/dx/rop/cst/Constant;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 100
    .local v3, "constant":Lcom/android/dx/rop/cst/Constant;
    instance-of v4, v3, Lcom/android/dx/rop/cst/CstType;

    if-eqz v4, :cond_0

    .line 101
    move-object v4, v3

    check-cast v4, Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/multidex/ClassReferenceListBuilder;->checkDescriptor(Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_0
    instance-of v4, v3, Lcom/android/dx/rop/cst/CstFieldRef;

    if-eqz v4, :cond_1

    .line 103
    move-object v4, v3

    check-cast v4, Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstFieldRef;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/multidex/ClassReferenceListBuilder;->checkDescriptor(Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_1
    instance-of v4, v3, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    if-eqz v4, :cond_2

    .line 105
    move-object v4, v3

    check-cast v4, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/multidex/ClassReferenceListBuilder;->checkPrototype(Lcom/android/dx/rop/type/Prototype;)V

    .line 99
    .end local v3    # "constant":Lcom/android/dx/rop/cst/Constant;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getFields()Lcom/android/dx/cf/iface/FieldList;

    move-result-object v0

    .line 110
    .local v0, "fields":Lcom/android/dx/cf/iface/FieldList;
    invoke-interface {v0}, Lcom/android/dx/cf/iface/FieldList;->size()I

    move-result v1

    .line 111
    .local v1, "nbField":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 112
    invoke-interface {v0, v2}, Lcom/android/dx/cf/iface/FieldList;->get(I)Lcom/android/dx/cf/iface/Field;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/dx/cf/iface/Field;->getDescriptor()Lcom/android/dx/rop/cst/CstString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/multidex/ClassReferenceListBuilder;->checkDescriptor(Ljava/lang/String;)V

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 115
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/android/dx/cf/iface/MethodList;

    move-result-object v2

    .line 116
    .local v2, "methods":Lcom/android/dx/cf/iface/MethodList;
    invoke-interface {v2}, Lcom/android/dx/cf/iface/MethodList;->size()I

    move-result v3

    .line 117
    .local v3, "nbMethods":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v3, :cond_5

    .line 118
    invoke-interface {v2, v4}, Lcom/android/dx/cf/iface/MethodList;->get(I)Lcom/android/dx/cf/iface/Method;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/dx/cf/iface/Method;->getDescriptor()Lcom/android/dx/rop/cst/CstString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/dx/rop/type/Prototype;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Prototype;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/multidex/ClassReferenceListBuilder;->checkPrototype(Lcom/android/dx/rop/type/Prototype;)V

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 120
    .end local v4    # "i":I
    :cond_5
    return-void
.end method

.method private checkDescriptor(Ljava/lang/String;)V
    .locals 4
    .param p1, "typeDescriptor"    # Ljava/lang/String;

    .line 131
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 133
    .local v0, "lastBrace":I
    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/multidex/ClassReferenceListBuilder;->addClassWithHierachy(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v0, 0x3

    if-le v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 137
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_1

    .line 138
    add-int/lit8 v2, v0, 0x2

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    .line 138
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/multidex/ClassReferenceListBuilder;->addClassWithHierachy(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 142
    .end local v0    # "lastBrace":I
    :cond_2
    :goto_0
    return-void
.end method

.method private checkPrototype(Lcom/android/dx/rop/type/Prototype;)V
    .locals 3
    .param p1, "proto"    # Lcom/android/dx/rop/type/Prototype;

    .line 123
    invoke-virtual {p1}, Lcom/android/dx/rop/type/Prototype;->getReturnType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/multidex/ClassReferenceListBuilder;->checkDescriptor(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    .line 125
    .local v0, "args":Lcom/android/dx/rop/type/StdTypeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/android/dx/rop/type/StdTypeList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 126
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->get(I)Lcom/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/multidex/ClassReferenceListBuilder;->checkDescriptor(Ljava/lang/String;)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "args"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    invoke-static {p0}, Lcom/android/multidex/MainDexListBuilder;->main([Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public addRoots(Ljava/util/zip/ZipFile;)V
    .locals 7
    .param p1, "jarOfRoots"    # Ljava/util/zip/ZipFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 68
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    const-string v2, ".class"

    if-eqz v1, :cond_1

    .line 69
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 70
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    iget-object v4, p0, Lcom/android/multidex/ClassReferenceListBuilder;->classNames:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v5, v2

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 77
    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 78
    .restart local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 80
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 81
    .restart local v3    # "name":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    :try_start_0
    iget-object v4, p0, Lcom/android/multidex/ClassReferenceListBuilder;->path:Lcom/android/multidex/Path;

    invoke-virtual {v4, v3}, Lcom/android/multidex/Path;->getClass(Ljava/lang/String;)Lcom/android/dx/cf/direct/DirectClassFile;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .local v4, "classFile":Lcom/android/dx/cf/direct/DirectClassFile;
    nop

    .line 89
    invoke-direct {p0, v4}, Lcom/android/multidex/ClassReferenceListBuilder;->addDependencies(Lcom/android/dx/cf/direct/DirectClassFile;)V

    goto :goto_2

    .line 85
    .end local v4    # "classFile":Lcom/android/dx/cf/direct/DirectClassFile;
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is missing form original class path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/multidex/ClassReferenceListBuilder;->path:Lcom/android/multidex/Path;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 91
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    :goto_2
    goto :goto_1

    .line 92
    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_3
    return-void
.end method

.method getClassNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/multidex/ClassReferenceListBuilder;->classNames:Ljava/util/Set;

    return-object v0
.end method
