.class final Lorg/checkerframework/com/google/common/io/CharSource$EmptyCharSource;
.super Lorg/checkerframework/com/google/common/io/CharSource$StringCharSource;
.source "CharSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/io/CharSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyCharSource"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/checkerframework/com/google/common/io/CharSource$EmptyCharSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 661
    new-instance v0, Lorg/checkerframework/com/google/common/io/CharSource$EmptyCharSource;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/io/CharSource$EmptyCharSource;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/io/CharSource$EmptyCharSource;->INSTANCE:Lorg/checkerframework/com/google/common/io/CharSource$EmptyCharSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 664
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/io/CharSource$StringCharSource;-><init>(Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method static synthetic access$000()Lorg/checkerframework/com/google/common/io/CharSource$EmptyCharSource;
    .locals 1

    .line 659
    sget-object v0, Lorg/checkerframework/com/google/common/io/CharSource$EmptyCharSource;->INSTANCE:Lorg/checkerframework/com/google/common/io/CharSource$EmptyCharSource;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 669
    const-string v0, "CharSource.empty()"

    return-object v0
.end method
