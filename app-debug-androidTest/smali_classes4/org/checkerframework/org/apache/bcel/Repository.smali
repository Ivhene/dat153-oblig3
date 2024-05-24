.class public abstract Lorg/checkerframework/org/apache/bcel/Repository;
.super Ljava/lang/Object;
.source "Repository.java"


# static fields
.field private static repository:Lorg/checkerframework/org/apache/bcel/util/Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Lorg/checkerframework/org/apache/bcel/util/SyntheticRepository;->getInstance()Lorg/checkerframework/org/apache/bcel/util/SyntheticRepository;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/bcel/Repository;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 2
    .param p0, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 112
    sget-object v0, Lorg/checkerframework/org/apache/bcel/Repository;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/checkerframework/org/apache/bcel/util/Repository;->findClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    .line 113
    .local v0, "old":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    sget-object v1, Lorg/checkerframework/org/apache/bcel/Repository;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    invoke-interface {v1, p0}, Lorg/checkerframework/org/apache/bcel/util/Repository;->storeClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V

    .line 114
    return-object v0
.end method

.method public static clearCache()V
    .locals 1

    .line 102
    sget-object v0, Lorg/checkerframework/org/apache/bcel/Repository;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    invoke-interface {v0}, Lorg/checkerframework/org/apache/bcel/util/Repository;->clear()V

    .line 103
    return-void
.end method

.method public static getInterfaces(Ljava/lang/String;)[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 1
    .param p0, "class_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 175
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Repository;->getInterfaces(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    return-object v0
.end method

.method public static getInterfaces(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 1
    .param p0, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getAllInterfaces()[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    return-object v0
.end method

.method public static getRepository()Lorg/checkerframework/org/apache/bcel/util/Repository;
    .locals 1

    .line 46
    sget-object v0, Lorg/checkerframework/org/apache/bcel/Repository;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    return-object v0
.end method

.method public static getSuperClasses(Ljava/lang/String;)[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 2
    .param p0, "class_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 151
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    .line 152
    .local v0, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Repository;->getSuperClasses(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    return-object v1
.end method

.method public static getSuperClasses(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 1
    .param p0, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperClasses()[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    return-object v0
.end method

.method public static implementationOf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "clazz"    # Ljava/lang/String;
    .param p1, "inter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 240
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/org/apache/bcel/Repository;->implementationOf(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)Z

    move-result v0

    return v0
.end method

.method public static implementationOf(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)Z
    .locals 1
    .param p0, "clazz"    # Ljava/lang/String;
    .param p1, "inter"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 262
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/org/apache/bcel/Repository;->implementationOf(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)Z

    move-result v0

    return v0
.end method

.method public static implementationOf(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Ljava/lang/String;)Z
    .locals 1
    .param p0, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .param p1, "inter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 251
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/org/apache/bcel/Repository;->implementationOf(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)Z

    move-result v0

    return v0
.end method

.method public static implementationOf(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)Z
    .locals 1
    .param p0, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .param p1, "inter"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->implementationOf(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)Z

    move-result v0

    return v0
.end method

.method public static instanceOf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "clazz"    # Ljava/lang/String;
    .param p1, "super_class"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 198
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/org/apache/bcel/Repository;->instanceOf(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)Z

    move-result v0

    return v0
.end method

.method public static instanceOf(Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)Z
    .locals 1
    .param p0, "clazz"    # Ljava/lang/String;
    .param p1, "super_class"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 218
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/org/apache/bcel/Repository;->instanceOf(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)Z

    move-result v0

    return v0
.end method

.method public static instanceOf(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Ljava/lang/String;)Z
    .locals 1
    .param p0, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .param p1, "super_class"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 208
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/org/apache/bcel/Repository;->instanceOf(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)Z

    move-result v0

    return v0
.end method

.method public static instanceOf(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)Z
    .locals 1
    .param p0, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .param p1, "super_class"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->instanceOf(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)Z

    move-result v0

    return v0
.end method

.method public static lookupClass(Ljava/lang/Class;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 77
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/checkerframework/org/apache/bcel/Repository;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    invoke-interface {v0, p0}, Lorg/checkerframework/org/apache/bcel/util/Repository;->loadClass(Ljava/lang/Class;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    return-object v0
.end method

.method public static lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 1
    .param p0, "class_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 65
    sget-object v0, Lorg/checkerframework/org/apache/bcel/Repository;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    invoke-interface {v0, p0}, Lorg/checkerframework/org/apache/bcel/util/Repository;->loadClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    return-object v0
.end method

.method public static lookupClassFile(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;
    .locals 2
    .param p0, "class_name"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/checkerframework/org/apache/bcel/Repository;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    invoke-interface {v1}, Lorg/checkerframework/org/apache/bcel/util/Repository;->getClassPath()Lorg/checkerframework/org/apache/bcel/util/ClassPath;

    move-result-object v1

    .line 89
    .local v1, "path":Lorg/checkerframework/org/apache/bcel/util/ClassPath;
    if-nez v1, :cond_0

    .line 90
    return-object v0

    .line 92
    :cond_0
    invoke-virtual {v1, p0}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->getClassFile(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 93
    .end local v1    # "path":Lorg/checkerframework/org/apache/bcel/util/ClassPath;
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method

.method public static removeClass(Ljava/lang/String;)V
    .locals 2
    .param p0, "clazz"    # Ljava/lang/String;

    .line 122
    sget-object v0, Lorg/checkerframework/org/apache/bcel/Repository;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    invoke-interface {v0, p0}, Lorg/checkerframework/org/apache/bcel/util/Repository;->findClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/checkerframework/org/apache/bcel/util/Repository;->removeClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V

    .line 123
    return-void
.end method

.method public static removeClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
    .locals 1
    .param p0, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 130
    sget-object v0, Lorg/checkerframework/org/apache/bcel/Repository;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    invoke-interface {v0, p0}, Lorg/checkerframework/org/apache/bcel/util/Repository;->removeClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V

    .line 131
    return-void
.end method

.method public static setRepository(Lorg/checkerframework/org/apache/bcel/util/Repository;)V
    .locals 0
    .param p0, "rep"    # Lorg/checkerframework/org/apache/bcel/util/Repository;

    .line 53
    sput-object p0, Lorg/checkerframework/org/apache/bcel/Repository;->repository:Lorg/checkerframework/org/apache/bcel/util/Repository;

    .line 54
    return-void
.end method
