.class synthetic Lorg/checkerframework/com/github/javaparser/ast/Node$2;
.super Ljava/lang/Object;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/ast/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$github$javaparser$ast$Node$ObserverRegistrationMode:[I

.field static final synthetic $SwitchMap$com$github$javaparser$ast$Node$TreeTraversal:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 731
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->values()[Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node$2;->$SwitchMap$com$github$javaparser$ast$Node$TreeTraversal:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->BREADTHFIRST:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Node$2;->$SwitchMap$com$github$javaparser$ast$Node$TreeTraversal:[I

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->POSTORDER:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/Node$2;->$SwitchMap$com$github$javaparser$ast$Node$TreeTraversal:[I

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->PREORDER:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    :try_start_3
    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/Node$2;->$SwitchMap$com$github$javaparser$ast$Node$TreeTraversal:[I

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->DIRECT_CHILDREN:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    :goto_3
    :try_start_4
    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/Node$2;->$SwitchMap$com$github$javaparser$ast$Node$TreeTraversal:[I

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->PARENTS:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    .line 585
    :goto_4
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;->values()[Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/checkerframework/com/github/javaparser/ast/Node$2;->$SwitchMap$com$github$javaparser$ast$Node$ObserverRegistrationMode:[I

    :try_start_5
    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;->JUST_THIS_NODE:Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    :goto_5
    :try_start_6
    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Node$2;->$SwitchMap$com$github$javaparser$ast$Node$ObserverRegistrationMode:[I

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;->THIS_NODE_AND_EXISTING_DESCENDANTS:Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    :try_start_7
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node$2;->$SwitchMap$com$github$javaparser$ast$Node$ObserverRegistrationMode:[I

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;->SELF_PROPAGATING:Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/Node$ObserverRegistrationMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    return-void
.end method
