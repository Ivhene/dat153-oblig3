.class final enum Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;
.super Ljava/lang/Enum;
.source "MatcherApplicationStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/invocation/MatcherApplicationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MatcherApplicationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

.field public static final enum ERROR_UNSUPPORTED_NUMBER_OF_MATCHERS:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

.field public static final enum MATCH_EACH_VARARGS_WITH_LAST_MATCHER:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

.field public static final enum ONE_MATCHER_PER_ARGUMENT:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 140
    new-instance v0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    const-string v1, "ONE_MATCHER_PER_ARGUMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->ONE_MATCHER_PER_ARGUMENT:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    .line 141
    new-instance v1, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    const-string v2, "MATCH_EACH_VARARGS_WITH_LAST_MATCHER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->MATCH_EACH_VARARGS_WITH_LAST_MATCHER:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    .line 142
    new-instance v2, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    const-string v3, "ERROR_UNSUPPORTED_NUMBER_OF_MATCHERS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->ERROR_UNSUPPORTED_NUMBER_OF_MATCHERS:Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    .line 139
    filled-new-array {v0, v1, v2}, [Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->$VALUES:[Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 139
    const-class v0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    return-object v0
.end method

.method public static values()[Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;
    .locals 1

    .line 139
    sget-object v0, Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->$VALUES:[Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    invoke-virtual {v0}, [Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mockito/internal/invocation/MatcherApplicationStrategy$MatcherApplicationType;

    return-object v0
.end method
