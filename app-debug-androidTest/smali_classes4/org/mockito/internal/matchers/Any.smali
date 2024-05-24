.class public Lorg/mockito/internal/matchers/Any;
.super Ljava/lang/Object;
.source "Any.java"

# interfaces
.implements Lorg/mockito/ArgumentMatcher;
.implements Lorg/mockito/internal/matchers/VarargMatcher;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/ArgumentMatcher<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/mockito/internal/matchers/VarargMatcher;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final ANY:Lorg/mockito/internal/matchers/Any;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lorg/mockito/internal/matchers/Any;

    invoke-direct {v0}, Lorg/mockito/internal/matchers/Any;-><init>()V

    sput-object v0, Lorg/mockito/internal/matchers/Any;->ANY:Lorg/mockito/internal/matchers/Any;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "actual"    # Ljava/lang/Object;

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 22
    const-string v0, "<any>"

    return-object v0
.end method
