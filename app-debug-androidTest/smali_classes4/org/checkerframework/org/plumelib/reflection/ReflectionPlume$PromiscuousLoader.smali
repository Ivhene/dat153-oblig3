.class Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume$PromiscuousLoader;
.super Ljava/lang/ClassLoader;
.source "ReflectionPlume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PromiscuousLoader"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume$1;

    .line 159
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume$PromiscuousLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public defineClassFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "fi":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 175
    .local v1, "numbytes":I
    new-array v2, v1, [B

    .line 176
    .local v2, "classBytes":[B
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 177
    .local v3, "bytesRead":I
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 178
    if-lt v3, v1, :cond_0

    .line 183
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v4, v1}, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume$PromiscuousLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v4

    .line 184
    .local v4, "return_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v4}, Lorg/checkerframework/org/plumelib/reflection/ReflectionPlume$PromiscuousLoader;->resolveClass(Ljava/lang/Class;)V

    .line 185
    return-object v4

    .line 179
    .end local v4    # "return_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    new-instance v4, Ljava/lang/Error;

    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, p2, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 180
    const-string v6, "Expected to read %d bytes from %s, got %d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method
