.class public abstract Lorg/checkerframework/com/google/common/base/Converter;
.super Ljava/lang/Object;
.source "Converter.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/base/Converter$IdentityConverter;,
        Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;,
        Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;,
        Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Function<",
        "TA;TB;>;"
    }
.end annotation


# instance fields
.field private final handleNullAutomatically:Z

.field private transient reverse:Lorg/checkerframework/com/google/common/base/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Converter<",
            "TB;TA;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 125
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter;, "Lorg/checkerframework/com/google/common/base/Converter<TA;TB;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/base/Converter;-><init>(Z)V

    .line 126
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .param p1, "handleNullAutomatically"    # Z

    .line 129
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter;, "Lorg/checkerframework/com/google/common/base/Converter<TA;TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-boolean p1, p0, Lorg/checkerframework/com/google/common/base/Converter;->handleNullAutomatically:Z

    .line 131
    return-void
.end method

.method public static from(Lorg/checkerframework/com/google/common/base/Function;Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/base/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TA;+TB;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TB;+TA;>;)",
            "Lorg/checkerframework/com/google/common/base/Converter<",
            "TA;TB;>;"
        }
    .end annotation

    .line 428
    .local p0, "forwardFunction":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TA;+TB;>;"
    .local p1, "backwardFunction":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TB;+TA;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;-><init>(Lorg/checkerframework/com/google/common/base/Function;Lorg/checkerframework/com/google/common/base/Function;Lorg/checkerframework/com/google/common/base/Converter$1;)V

    return-object v0
.end method

.method public static identity()Lorg/checkerframework/com/google/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/base/Converter<",
            "TT;TT;>;"
        }
    .end annotation

    .line 477
    sget-object v0, Lorg/checkerframework/com/google/common/base/Converter$IdentityConverter;->INSTANCE:Lorg/checkerframework/com/google/common/base/Converter$IdentityConverter;

    return-object v0
.end method


# virtual methods
.method public final andThen(Lorg/checkerframework/com/google/common/base/Converter;)Lorg/checkerframework/com/google/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/base/Converter<",
            "TB;TC;>;)",
            "Lorg/checkerframework/com/google/common/base/Converter<",
            "TA;TC;>;"
        }
    .end annotation

    .line 314
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter;, "Lorg/checkerframework/com/google/common/base/Converter<TA;TB;>;"
    .local p1, "secondConverter":Lorg/checkerframework/com/google/common/base/Converter;, "Lorg/checkerframework/com/google/common/base/Converter<TB;TC;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/base/Converter;->doAndThen(Lorg/checkerframework/com/google/common/base/Converter;)Lorg/checkerframework/com/google/common/base/Converter;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 390
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter;, "Lorg/checkerframework/com/google/common/base/Converter<TA;TB;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/base/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter;, "Lorg/checkerframework/com/google/common/base/Converter<TA;TB;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/base/Converter;->correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convertAll(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TA;>;)",
            "Ljava/lang/Iterable<",
            "TB;>;"
        }
    .end annotation

    .line 202
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter;, "Lorg/checkerframework/com/google/common/base/Converter<TA;TB;>;"
    .local p1, "fromIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TA;>;"
    const-string v0, "fromIterable"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v0, Lorg/checkerframework/com/google/common/base/Converter$1;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/base/Converter$1;-><init>(Lorg/checkerframework/com/google/common/base/Converter;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method correctedDoBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter;, "Lorg/checkerframework/com/google/common/base/Converter<TA;TB;>;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/base/Converter;->handleNullAutomatically:Z

    if-eqz v0, :cond_1

    .line 186
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/base/Converter;->doBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 188
    :cond_1
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/base/Converter;->doBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter;, "Lorg/checkerframework/com/google/common/base/Converter<TA;TB;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/base/Converter;->handleNullAutomatically:Z

    if-eqz v0, :cond_1

    .line 176
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/base/Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 178
    :cond_1
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/base/Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method doAndThen(Lorg/checkerframework/com/google/common/base/Converter;)Lorg/checkerframework/com/google/common/base/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/base/Converter<",
            "TB;TC;>;)",
            "Lorg/checkerframework/com/google/common/base/Converter<",
            "TA;TC;>;"
        }
    .end annotation

    .line 319
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter;, "Lorg/checkerframework/com/google/common/base/Converter<TA;TB;>;"
    .local p1, "secondConverter":Lorg/checkerframework/com/google/common/base/Converter;, "Lorg/checkerframework/com/google/common/base/Converter<TB;TC;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;

    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/base/Converter;

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;-><init>(Lorg/checkerframework/com/google/common/base/Converter;Lorg/checkerframework/com/google/common/base/Converter;)V

    return-object v0
.end method

.method protected abstract doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation
.end method

.method protected abstract doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 406
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter;, "Lorg/checkerframework/com/google/common/base/Converter<TA;TB;>;"
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reverse()Lorg/checkerframework/com/google/common/base/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/base/Converter<",
            "TB;TA;>;"
        }
    .end annotation

    .line 238
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter;, "Lorg/checkerframework/com/google/common/base/Converter<TA;TB;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Converter;->reverse:Lorg/checkerframework/com/google/common/base/Converter;

    .line 239
    .local v0, "result":Lorg/checkerframework/com/google/common/base/Converter;, "Lorg/checkerframework/com/google/common/base/Converter<TB;TA;>;"
    if-nez v0, :cond_0

    new-instance v1, Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;-><init>(Lorg/checkerframework/com/google/common/base/Converter;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/base/Converter;->reverse:Lorg/checkerframework/com/google/common/base/Converter;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method
