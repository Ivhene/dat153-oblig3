.class abstract Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;
.super Ljava/lang/Object;
.source "ClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/util/ClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PathEntry"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/apache/bcel/util/ClassPath$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/apache/bcel/util/ClassPath$1;

    .line 362
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getClassFile(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract getResource(Ljava/lang/String;)Ljava/net/URL;
.end method

.method abstract getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
.end method
