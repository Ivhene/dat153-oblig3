.class public Lorg/checkerframework/framework/util/Heuristics$OrMatcher;
.super Lorg/checkerframework/framework/util/Heuristics$Matcher;
.source "Heuristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/Heuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrMatcher"
.end annotation


# instance fields
.field private final matchers:[Lorg/checkerframework/framework/util/Heuristics$Matcher;


# direct methods
.method public varargs constructor <init>([Lorg/checkerframework/framework/util/Heuristics$Matcher;)V
    .locals 0
    .param p1, "matchers"    # [Lorg/checkerframework/framework/util/Heuristics$Matcher;

    .line 217
    invoke-direct {p0}, Lorg/checkerframework/framework/util/Heuristics$Matcher;-><init>()V

    .line 218
    iput-object p1, p0, Lorg/checkerframework/framework/util/Heuristics$OrMatcher;->matchers:[Lorg/checkerframework/framework/util/Heuristics$Matcher;

    .line 219
    return-void
.end method


# virtual methods
.method public match(Lcom/sun/source/util/TreePath;)Z
    .locals 6
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 223
    iget-object v0, p0, Lorg/checkerframework/framework/util/Heuristics$OrMatcher;->matchers:[Lorg/checkerframework/framework/util/Heuristics$Matcher;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 224
    .local v4, "matcher":Lorg/checkerframework/framework/util/Heuristics$Matcher;
    invoke-virtual {v4, p1}, Lorg/checkerframework/framework/util/Heuristics$Matcher;->match(Lcom/sun/source/util/TreePath;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 225
    const/4 v0, 0x1

    return v0

    .line 223
    .end local v4    # "matcher":Lorg/checkerframework/framework/util/Heuristics$Matcher;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    :cond_1
    return v2
.end method
