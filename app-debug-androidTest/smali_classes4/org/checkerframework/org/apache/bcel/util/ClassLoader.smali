.class public Lorg/checkerframework/org/apache/bcel/util/ClassLoader;
.super Ljava/lang/ClassLoader;
.source "ClassLoader.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BCEL_TOKEN:Ljava/lang/String; = "$$BCEL$$"

.field public static final DEFAULT_IGNORED_PACKAGES:[Ljava/lang/String;


# instance fields
.field private final classes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final ignored_packages:[Ljava/lang/String;

.field private repository:Lorg/checkerframework/org/apache/bcel/util/Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    const-string v0, "javax."

    const-string v1, "sun."

    const-string v2, "java."

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;->DEFAULT_IGNORED_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    sget-object v0, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;->DEFAULT_IGNORED_PACKAGES:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;-><init>([Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "deferTo"    # Ljava/lang/ClassLoader;

    .line 84
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 67
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;->classes:Ljava/util/Hashtable;

    .line 70
    invoke-static {}, Lorg/checkerframework/org/apache/bcel/util/SyntheticRepository;->getInstance()Lorg/checkerframework/org/apache/bcel/util/SyntheticRepository;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    .line 85
    sget-object v0, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;->DEFAULT_IGNORED_PACKAGES:[Ljava/lang/String;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;->ignored_packages:[Ljava/lang/String;

    .line 86
    new-instance v0, Lorg/checkerframework/org/apache/bcel/util/ClassLoaderRepository;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/util/ClassLoaderRepository;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;[Ljava/lang/String;)V
    .locals 1
    .param p1, "deferTo"    # Ljava/lang/ClassLoader;
    .param p2, "ignored_packages"    # [Ljava/lang/String;

    .line 103
    invoke-direct {p0, p2}, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;-><init>([Ljava/lang/String;)V

    .line 104
    new-instance v0, Lorg/checkerframework/org/apache/bcel/util/ClassLoaderRepository;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/bcel/util/ClassLoaderRepository;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    .line 105
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "ignored_packages"    # [Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 67
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;->classes:Ljava/util/Hashtable;

    .line 70
    invoke-static {}, Lorg/checkerframework/org/apache/bcel/util/SyntheticRepository;->getInstance()Lorg/checkerframework/org/apache/bcel/util/SyntheticRepository;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    .line 94
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;->ignored_packages:[Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method protected createClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 8
    .param p1, "class_name"    # Ljava/lang/String;

    .line 174
    const-string v0, "$$BCEL$$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 175
    .local v1, "index":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "real_name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 178
    .local v2, "clazz":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v0, v3}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->decode(Ljava/lang/String;Z)[B

    move-result-object v4

    .line 179
    .local v4, "bytes":[B
    new-instance v5, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v7, "foo"

    invoke-direct {v5, v6, v7}, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 180
    .local v5, "parser":Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->parse()Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 184
    .end local v4    # "bytes":[B
    .end local v5    # "parser":Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;
    nop

    .line 186
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v4

    .line 187
    .local v4, "cp":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassNameIndex()I

    move-result v5

    const/4 v6, 0x7

    invoke-virtual {v4, v5, v6}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    .line 189
    .local v5, "cl":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getNameIndex()I

    move-result v6

    invoke-virtual {v4, v6, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 191
    .local v3, "name":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    const/16 v6, 0x2e

    const/16 v7, 0x2f

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->setBytes(Ljava/lang/String;)V

    .line 192
    return-object v2

    .line 181
    .end local v3    # "name":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    .end local v4    # "cp":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .end local v5    # "cl":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    :catch_0
    move-exception v3

    .line 182
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 183
    const/4 v4, 0x0

    return-object v4
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 7
    .param p1, "class_name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    .line 112
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;->classes:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    move-object v0, v1

    if-nez v1, :cond_6

    .line 116
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;->ignored_packages:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 117
    .local v5, "ignored_package":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 118
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 119
    goto :goto_1

    .line 116
    .end local v5    # "ignored_package":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 122
    :cond_1
    :goto_1
    if-nez v0, :cond_5

    .line 123
    const/4 v1, 0x0

    .line 126
    .local v1, "clazz":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    const-string v2, "$$BCEL$$"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;->createClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    goto :goto_2

    .line 129
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    invoke-interface {v2, p1}, Lorg/checkerframework/org/apache/bcel/util/Repository;->loadClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_4

    .line 130
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;->modifyClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    .line 135
    :goto_2
    if-eqz v1, :cond_3

    .line 136
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getBytes()[B

    move-result-object v2

    .line 137
    .local v2, "bytes":[B
    array-length v4, v2

    invoke-virtual {p0, p1, v2, v3, v4}, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    .line 138
    .end local v2    # "bytes":[B
    goto :goto_3

    .line 139
    :cond_3
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    .line 132
    :cond_4
    new-instance v2, Ljava/lang/ClassNotFoundException;

    invoke-direct {v2, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    .end local v1    # "clazz":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :cond_5
    :goto_3
    if-eqz p2, :cond_6

    .line 143
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;->resolveClass(Ljava/lang/Class;)V

    .line 146
    :cond_6
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassLoader;->classes:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-object v0
.end method

.method protected modifyClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 0
    .param p1, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 155
    return-object p1
.end method
