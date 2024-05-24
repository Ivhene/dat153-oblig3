.class public Lorg/checkerframework/org/apache/bcel/util/JavaWrapper;
.super Ljava/lang/Object;
.source "JavaWrapper.java"


# instance fields
.field private final loader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-static {}, Lorg/checkerframework/org/apache/bcel/util/JavaWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/util/JavaWrapper;-><init>(Ljava/lang/ClassLoader;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/util/JavaWrapper;->loader:Ljava/lang/ClassLoader;

    .line 60
    return-void
.end method

.method private static getClassLoader()Ljava/lang/ClassLoader;
    .locals 4

    .line 46
    const-string v0, "bcel.classloader"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 48
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The property \'bcel.classloader\' must be defined"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    array-length v0, p0

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Missing class name."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    aget-object v1, p0, v0

    .line 114
    .local v1, "class_name":Ljava/lang/String;
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 115
    .local v2, "new_argv":[Ljava/lang/String;
    array-length v4, v2

    invoke-static {p0, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    new-instance v0, Lorg/checkerframework/org/apache/bcel/util/JavaWrapper;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/util/JavaWrapper;-><init>()V

    .line 117
    .local v0, "wrapper":Lorg/checkerframework/org/apache/bcel/util/JavaWrapper;
    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/util/JavaWrapper;->runMain(Ljava/lang/String;[Ljava/lang/String;)V

    .line 118
    return-void
.end method


# virtual methods
.method public runMain(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "class_name"    # Ljava/lang/String;
    .param p2, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/JavaWrapper;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 77
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v2, "main"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 78
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 77
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v1, v2

    .line 82
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    .line 83
    .local v2, "m":I
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 84
    .local v3, "r":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v3, v4, :cond_0

    .line 92
    .end local v2    # "m":I
    .end local v3    # "r":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 94
    :try_start_1
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v2

    .line 98
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 86
    .local v2, "m":I
    .restart local v3    # "r":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_2
    new-instance v4, Ljava/lang/NoSuchMethodException;

    invoke-direct {v4}, Ljava/lang/NoSuchMethodException;-><init>()V

    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local p1    # "class_name":Ljava/lang/String;
    .end local p2    # "argv":[Ljava/lang/String;
    throw v4
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 88
    .end local v2    # "m":I
    .end local v3    # "r":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    .restart local p1    # "class_name":Ljava/lang/String;
    .restart local p2    # "argv":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 89
    .local v2, "no":Ljava/lang/NoSuchMethodException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": public static void main(String[] argv) is not defined"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    return-void
.end method
