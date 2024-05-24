.class Lcom/android/dx/command/annotool/Main$Arguments;
.super Ljava/lang/Object;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/command/annotool/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Arguments"
.end annotation


# instance fields
.field aclass:Ljava/lang/String;

.field eTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Ljava/lang/annotation/ElementType;",
            ">;"
        }
    .end annotation
.end field

.field files:[Ljava/lang/String;

.field printTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/android/dx/command/annotool/Main$PrintType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-class v0, Ljava/lang/annotation/ElementType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/annotool/Main$Arguments;->eTypes:Ljava/util/EnumSet;

    .line 54
    const-class v0, Lcom/android/dx/command/annotool/Main$PrintType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/annotool/Main$Arguments;->printTypes:Ljava/util/EnumSet;

    .line 60
    return-void
.end method


# virtual methods
.method parse([Ljava/lang/String;)V
    .locals 9
    .param p1, "argArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dx/command/annotool/Main$InvalidArgumentException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_6

    .line 64
    aget-object v1, p1, v0

    .line 66
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "--annotation="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x3d

    if-eqz v2, :cond_1

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "argParam":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/dx/command/annotool/Main$Arguments;->aclass:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 72
    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dx/command/annotool/Main$Arguments;->aclass:Ljava/lang/String;

    .line 73
    .end local v2    # "argParam":Ljava/lang/String;
    goto/16 :goto_3

    .line 69
    .restart local v2    # "argParam":Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/android/dx/command/annotool/Main$InvalidArgumentException;

    const-string v4, "--annotation can only be specified once."

    invoke-direct {v3, v4}, Lcom/android/dx/command/annotool/Main$InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 73
    .end local v2    # "argParam":Ljava/lang/String;
    :cond_1
    const-string v2, "--element="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v4, ","

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    .restart local v2    # "argParam":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 78
    .local v6, "p":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/dx/command/annotool/Main$Arguments;->eTypes:Ljava/util/EnumSet;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/annotation/ElementType;->valueOf(Ljava/lang/String;)Ljava/lang/annotation/ElementType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    nop

    .end local v6    # "p":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 83
    :cond_2
    nop

    .line 84
    .end local v2    # "argParam":Ljava/lang/String;
    goto :goto_3

    .line 80
    .restart local v2    # "argParam":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 81
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lcom/android/dx/command/annotool/Main$InvalidArgumentException;

    const-string v5, "invalid --element"

    invoke-direct {v4, v5}, Lcom/android/dx/command/annotool/Main$InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 84
    .end local v2    # "argParam":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_3
    const-string v2, "--print="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    .restart local v2    # "argParam":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 89
    .restart local v6    # "p":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/dx/command/annotool/Main$Arguments;->printTypes:Ljava/util/EnumSet;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/dx/command/annotool/Main$PrintType;->valueOf(Ljava/lang/String;)Lcom/android/dx/command/annotool/Main$PrintType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    nop

    .end local v6    # "p":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 93
    :cond_4
    nop

    .line 94
    .end local v2    # "argParam":Ljava/lang/String;
    nop

    .line 63
    .end local v1    # "arg":Ljava/lang/String;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 91
    .restart local v1    # "arg":Ljava/lang/String;
    .restart local v2    # "argParam":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 92
    .restart local v3    # "ex":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lcom/android/dx/command/annotool/Main$InvalidArgumentException;

    const-string v5, "invalid --print"

    invoke-direct {v4, v5}, Lcom/android/dx/command/annotool/Main$InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 95
    .end local v2    # "argParam":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_5
    array-length v2, p1

    sub-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/dx/command/annotool/Main$Arguments;->files:[Ljava/lang/String;

    .line 96
    array-length v3, v2

    invoke-static {p1, v0, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    nop

    .line 101
    .end local v0    # "i":I
    .end local v1    # "arg":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/android/dx/command/annotool/Main$Arguments;->aclass:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 106
    iget-object v0, p0, Lcom/android/dx/command/annotool/Main$Arguments;->printTypes:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 107
    iget-object v0, p0, Lcom/android/dx/command/annotool/Main$Arguments;->printTypes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/dx/command/annotool/Main$PrintType;->CLASS:Lcom/android/dx/command/annotool/Main$PrintType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_7
    iget-object v0, p0, Lcom/android/dx/command/annotool/Main$Arguments;->eTypes:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 111
    iget-object v0, p0, Lcom/android/dx/command/annotool/Main$Arguments;->eTypes:Ljava/util/EnumSet;

    sget-object v1, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_8
    iget-object v0, p0, Lcom/android/dx/command/annotool/Main$Arguments;->eTypes:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    .line 116
    .local v0, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljava/lang/annotation/ElementType;>;"
    sget-object v1, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 117
    sget-object v1, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 123
    return-void

    .line 119
    :cond_9
    new-instance v1, Lcom/android/dx/command/annotool/Main$InvalidArgumentException;

    const-string v2, "only --element parameters \'type\' and \'package\' supported"

    invoke-direct {v1, v2}, Lcom/android/dx/command/annotool/Main$InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    .end local v0    # "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljava/lang/annotation/ElementType;>;"
    :cond_a
    new-instance v0, Lcom/android/dx/command/annotool/Main$InvalidArgumentException;

    const-string v1, "--annotation must be specified"

    invoke-direct {v0, v1}, Lcom/android/dx/command/annotool/Main$InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
