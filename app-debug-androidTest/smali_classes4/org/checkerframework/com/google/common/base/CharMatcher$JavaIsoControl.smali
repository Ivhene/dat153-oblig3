.class final Lorg/checkerframework/com/google/common/base/CharMatcher$JavaIsoControl;
.super Lorg/checkerframework/com/google/common/base/CharMatcher$NamedFastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JavaIsoControl"
.end annotation


# static fields
.field static final INSTANCE:Lorg/checkerframework/com/google/common/base/CharMatcher$JavaIsoControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1441
    new-instance v0, Lorg/checkerframework/com/google/common/base/CharMatcher$JavaIsoControl;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/base/CharMatcher$JavaIsoControl;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/base/CharMatcher$JavaIsoControl;->INSTANCE:Lorg/checkerframework/com/google/common/base/CharMatcher$JavaIsoControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1444
    const-string v0, "CharMatcher.javaIsoControl()"

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/base/CharMatcher$NamedFastMatcher;-><init>(Ljava/lang/String;)V

    .line 1445
    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 1449
    const/16 v0, 0x1f

    if-le p1, v0, :cond_1

    const/16 v0, 0x7f

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9f

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
