.class Lorg/checkerframework/com/google/common/escape/Escapers$Builder$1;
.super Lorg/checkerframework/com/google/common/escape/ArrayBasedCharEscaper;
.source "Escapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->build()Lorg/checkerframework/com/google/common/escape/Escaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final replacementChars:[C

.field final synthetic this$0:Lorg/checkerframework/com/google/common/escape/Escapers$Builder;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/escape/Escapers$Builder;Ljava/util/Map;CC)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/escape/Escapers$Builder;
    .param p3, "safeMin"    # C
    .param p4, "safeMax"    # C

    .line 153
    .local p2, "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/escape/Escapers$Builder$1;->this$0:Lorg/checkerframework/com/google/common/escape/Escapers$Builder;

    invoke-direct {p0, p2, p3, p4}, Lorg/checkerframework/com/google/common/escape/ArrayBasedCharEscaper;-><init>(Ljava/util/Map;CC)V

    .line 154
    nop

    .line 155
    invoke-static {p1}, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->access$100(Lorg/checkerframework/com/google/common/escape/Escapers$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/checkerframework/com/google/common/escape/Escapers$Builder;->access$100(Lorg/checkerframework/com/google/common/escape/Escapers$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/com/google/common/escape/Escapers$Builder$1;->replacementChars:[C

    .line 154
    return-void
.end method


# virtual methods
.method protected escapeUnsafe(C)[C
    .locals 1
    .param p1, "c"    # C

    .line 159
    iget-object v0, p0, Lorg/checkerframework/com/google/common/escape/Escapers$Builder$1;->replacementChars:[C

    return-object v0
.end method
