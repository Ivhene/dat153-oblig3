.class abstract Lorg/checkerframework/com/google/common/base/CharMatcher$NamedFastMatcher;
.super Lorg/checkerframework/com/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "NamedFastMatcher"
.end annotation


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .line 957
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/base/CharMatcher$FastMatcher;-><init>()V

    .line 958
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$NamedFastMatcher;->description:Ljava/lang/String;

    .line 959
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 963
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$NamedFastMatcher;->description:Ljava/lang/String;

    return-object v0
.end method
