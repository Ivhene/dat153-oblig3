.class Lorg/checkerframework/org/apache/commons/lang3/LocaleUtils$SyncAvoid;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/lang3/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncAvoid"
.end annotation


# static fields
.field private static final AVAILABLE_LOCALE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private static final AVAILABLE_LOCALE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 355
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/checkerframework/org/apache/commons/lang3/LocaleUtils$SyncAvoid;->AVAILABLE_LOCALE_LIST:Ljava/util/List;

    .line 356
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lorg/checkerframework/org/apache/commons/lang3/LocaleUtils$SyncAvoid;->AVAILABLE_LOCALE_SET:Ljava/util/Set;

    .line 357
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 347
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/LocaleUtils$SyncAvoid;->AVAILABLE_LOCALE_LIST:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .line 347
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/LocaleUtils$SyncAvoid;->AVAILABLE_LOCALE_SET:Ljava/util/Set;

    return-object v0
.end method
